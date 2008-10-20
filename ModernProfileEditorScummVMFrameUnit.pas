unit ModernProfileEditorScummVMFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, Buttons, GameDBUnit, ModernProfileEditorFormUnit;

type
  TModernProfileEditorScummVMFrame = class(TFrame, IModernProfileEditorFrame)
    LanguageLabel: TLabel;
    LanguageComboBox: TComboBox;
    SubtitlesCheckBox: TCheckBox;
    AutosaveLabel: TLabel;
    AutosaveEdit: TSpinEdit;
    TalkSpeedEdit: TSpinEdit;
    TalkSpeedLabel: TLabel;
    SavePathGroupBox: TGroupBox;
    SavePathDefaultRadioButton: TRadioButton;
    SavePathCustomRadioButton: TRadioButton;
    SavePathEditButton: TSpeedButton;
    SavePathEdit: TEdit;
    ConfirmExitCheckBox: TCheckBox;
    CDGroupBox: TGroupBox;
    CDRadioButton1: TRadioButton;
    CDRadioButton2: TRadioButton;
    CDEdit: TSpinEdit;
    JoystickLabel: TLabel;
    JoystickEdit: TSpinEdit;
    procedure SavePathEditButtonClick(Sender: TObject);
    procedure SavePathEditChange(Sender: TObject);
    procedure CDEditChange(Sender: TObject);
  private
    { Private-Deklarationen }
    LastGameName, SaveLang : String;
    CurrentGameName, CurrentScummVMPath : PString;
  public
    { Public-Deklarationen }
    Procedure InitGUI(const InitData : TModernProfileEditorInitData);
    Procedure SetGame(const Game : TGame; const LoadFromTemplate : Boolean);
    Function CheckValue : Boolean;
    Procedure GetGame(const Game : TGame);
    Procedure ShowFrame;
  end;

implementation

uses Math, VistaToolsUnit, LanguageSetupUnit, CommonTools, HelpConsts, PrgSetupUnit;

{$R *.dfm}

{ TModernProfileEditorScummVMFrame }

procedure TModernProfileEditorScummVMFrame.InitGUI(const InitData : TModernProfileEditorInitData);
begin
  LastGameName:='';

  NoFlicker(LanguageComboBox);
  NoFlicker(AutosaveEdit);
  NoFlicker(TalkSpeedEdit);
  NoFlicker(SubtitlesCheckBox);
  NoFlicker(SavePathGroupBox);
  NoFlicker(SavePathDefaultRadioButton);
  NoFlicker(SavePathCustomRadioButton);
  NoFlicker(SavePathEdit);
  NoFlicker(CDGroupBox);
  NoFlicker(CDRadioButton1);
  NoFlicker(CDRadioButton2);
  NoFlicker(JoystickEdit);

  LanguageLabel.Caption:=LanguageSetup.ProfileEditorScummVMLanguage;
  AutosaveLabel.Caption:=LanguageSetup.ProfileEditorScummVMAutosave;
  TalkSpeedLabel.Caption:=LanguageSetup.ProfileEditorScummVMTextSpeed;
  SubtitlesCheckBox.Caption:=LanguageSetup.ProfileEditorScummVMSubtitles;
  ConfirmExitCheckBox.Caption:=LanguageSetup.ProfileEditorScummVMConfirmExit;
  SavePathGroupBox.Caption:=LanguageSetup.ProfileEditorScummVMSavePath;
  SavePathDefaultRadioButton.Caption:=LanguageSetup.ProfileEditorScummVMSavePathGameDir+' ('+LanguageSetup.Default+')';
  SavePathCustomRadioButton.Caption:=LanguageSetup.ProfileEditorScummVMSavePathCustom;
  SavePathEditButton.Hint:=LanguageSetup.ChooseFolder;
  CDGroupBox.Caption:=LanguageSetup.ProfileEditorScummVMCDAudioDrive;
  CDRadioButton1.Caption:=LanguageSetup.ProfileEditorScummVMCDAudioOff;
  CDRadioButton2.Caption:=LanguageSetup.ProfileEditorScummVMCDAudioNr;
  JoystickLabel.Caption:=LanguageSetup.ProfileEditorScummVMJoystick;

  CurrentGameName:=InitData.CurrentScummVMGameName;
  CurrentScummVMPath:=InitData.CurrentScummVMPath;

  HelpContext:=ID_ProfileEditScummVM;
end;

Type TLangRec=record
  Game, Lang : String;
end;

const LangData : Array[0..7] of TLangRec=(
  (Game: 'maniac'; Lang: 'en,de,fr,it,es'),
  (Game: 'zak'; Lang: 'en,de,fr,it,es'),
  (Game: 'dig'; Lang: 'jp, zh,kr'),
  (Game: 'comi'; Lang: 'en,de,fr,it,pt,es,jp,zh,kr'),
  (Game: 'sky'; Lang: 'gb,en,de,fr,it,pt,es,se'),
  (Game: 'sword1'; Lang: 'en,de,fr,it,es,pt,cz'),
  (Game: 'simon1'; Lang: 'en,de,fr,it,es,hb,pl,ru'),
  (Game: 'simon2'; Lang: 'en,de,fr,it,es,hb,pl,ru')
);

procedure TModernProfileEditorScummVMFrame.SetGame(const Game: TGame; const LoadFromTemplate: Boolean);
begin
  AutosaveEdit.Value:=Min(86400,Max(1,Game.ScummVMAutosave));
  TalkSpeedEdit.Value:=Min(1000,Max(1,Game.ScummVMTalkSpeed));
  SubtitlesCheckBox.Checked:=Game.ScummVMSubtitles;
  ConfirmExitCheckBox.Checked:=Game.ScummVMConfirmExit;

  SavePathEdit.Text:=Game.ScummVMSavePath;
  SavePathEditChange(self);

  CDEdit.Value:=Min(3,Max(0,Game.ScummVMCDROM));
  CDRadioButton1.Checked:=(Game.ScummVMCDROM=-1);
  CDRadioButton2.Checked:=(Game.ScummVMCDROM>=0);

  JoystickEdit.Value:=Min(3,Max(0,Game.ScummVMJoystickNum));

  SaveLang:=Game.ScummVMLanguage;
end;

procedure TModernProfileEditorScummVMFrame.ShowFrame;
Var S : String;
    I : Integer;
    St : TStringList;
begin
  If LastGameName=CurrentGameName^ then exit;
  LastGameName:=CurrentGameName^;

  If LanguageComboBox.ItemIndex>=0 then S:=LanguageComboBox.Text else S:=SaveLang;
  LanguageComboBox.Items.BeginUpdate;
  try
    LanguageComboBox.Items.Clear;
    For I:=Low(LangData) to High(LangData) do If LangData[I].Game=LastGameName then begin
      St:=ValueToList(LangData[I].Lang,','); try LanguageComboBox.Items.AddStrings(St); finally St.Free; end;
      break;
    end;
  finally
    LanguageComboBox.Items.EndUpdate;
  end;

  LanguageComboBox.Enabled:=(LanguageComboBox.Items.Count>0);
  LanguageLabel.Enabled:=(LanguageComboBox.Items.Count>0);

  If LanguageComboBox.Items.Count>0 then begin
    If S='' then LanguageComboBox.ItemIndex:=0 else begin
      I:=LanguageComboBox.Items.IndexOf(S);
      If I>=0 then LanguageComboBox.ItemIndex:=I;
    end;
  end;
end;

function TModernProfileEditorScummVMFrame.CheckValue: Boolean;
begin
  result:=True;
end;

procedure TModernProfileEditorScummVMFrame.GetGame(const Game: TGame);
begin
  If LanguageComboBox.ItemIndex>=0 then Game.ScummVMLanguage:=LanguageComboBox.Text else Game.ScummVMLanguage:='';
  Game.ScummVMAutosave:=AutosaveEdit.Value;
  Game.ScummVMTalkSpeed:=TalkSpeedEdit.Value;
  Game.ScummVMSubtitles:=SubtitlesCheckBox.Checked;
  Game.ScummVMConfirmExit:=ConfirmExitCheckBox.Checked;
  If SavePathDefaultRadioButton.Checked then Game.ScummVMSavePath:='' else Game.ScummVMSavePath:=Trim(SavePathEdit.Text);
  If CDRadioButton2.Checked then Game.ScummVMCDROM:=CDEdit.Value else Game.ScummVMCDROM:=-1;
  Game.ScummVMJoystickNum:=JoystickEdit.Value;
end;

procedure TModernProfileEditorScummVMFrame.SavePathEditChange(Sender: TObject);
begin
  SavePathDefaultRadioButton.Checked:=(Trim(SavePathEdit.Text)='');
  SavePathCustomRadioButton.Checked:=(Trim(SavePathEdit.Text)<>'');
end;

procedure TModernProfileEditorScummVMFrame.SavePathEditButtonClick(Sender: TObject);
Var S : String;
begin
  S:=Trim(SavePathEdit.Text);
  If S='' then S:=Trim(CurrentScummVMPath^);
  If S='' then S:=PrgSetup.GameDir;
  S:=MakeAbsPath(S,PrgSetup.BaseDir);
  if not SelectDirectory(Handle,LanguageSetup.ChooseFolder,S) then exit;
  SavePathEdit.Text:=S;
  SavePathEditChange(Sender);
end;

procedure TModernProfileEditorScummVMFrame.CDEditChange(Sender: TObject);
begin
  CDRadioButton2.Checked:=True;
end;

end.
