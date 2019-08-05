unit ModernProfileEditorMemoryFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, GameDBUnit, ModernProfileEditorFormUnit, ExtCtrls,
  ImgList, Buttons;

type
  TModernProfileEditorMemoryFrame = class(TFrame, IModernProfileEditorFrame)
    MemoryLabel: TLabel;
    MemoryEdit: TSpinEdit;
    XMSCheckBox: TCheckBox;
    EMSCheckBox: TCheckBox;
    UMBCheckBox: TCheckBox;
    LoadFixCheckBox: TCheckBox;
    LoadFixLabel: TLabel;
    LoadFixEdit: TSpinEdit;
    DOS32ACheckBox: TCheckBox;
    DOS32AInfoLabel: TLabel;
    Timer: TTimer;
    DOS32AInfoButton: TSpeedButton;
    ImageList: TImageList;
    procedure TimerTimer(Sender: TObject);
    procedure DOS32AInfoButtonClick(Sender: TObject);
  private
    { Private-Deklarationen }
    LastProfileExe : String;
    ProfileExe : PString;
  public
    { Public-Deklarationen }
    Procedure InitGUI(const InitData : TModernProfileEditorInitData);
    Procedure SetGame(const Game : TGame; const LoadFromTemplate : Boolean);
    Function CheckValue : Boolean;
    Procedure GetGame(const Game : TGame);
    Procedure ShowFrame;
  end;

implementation

uses LanguageSetupUnit, VistaToolsUnit, CommonTools, PrgSetupUnit, HelpConsts;

{$R *.dfm}

{ TModernProfileEditorMemoryFrame }

procedure TModernProfileEditorMemoryFrame.InitGUI(const InitData : TModernProfileEditorInitData);
begin
  NoFlicker(MemoryEdit);

  MemoryLabel.Caption:=LanguageSetup.GameMemory;
  XMSCheckBox.Caption:=LanguageSetup.GameXMS;
  EMSCheckBox.Caption:=LanguageSetup.GameEMS;
  UMBCheckBox.Caption:=LanguageSetup.GameUMB;
  LoadFixCheckBox.Caption:=LanguageSetup.ProfileEditorLoadFix;
  LoadFixLabel.Caption:=LanguageSetup.ProfileEditorLoadFixMemory;
  DOS32ACheckBox.Caption:=LanguageSetup.GameDOS32A;
  DOS32AInfoLabel.Caption:=LanguageSetup.ProfileEditorNeedFreeDOS;
  If DirectoryExists(IncludeTrailingPathDelimiter(MakeAbsPath(PrgSetup.PathToFREEDOS,PrgSetup.BaseDir))) then begin
    DOS32AInfoLabel.Font.Color:=clGrayText;
  end else begin
    DOS32AInfoLabel.Font.Color:=clRed;
  end;
  LastProfileExe:='-';
  ProfileExe:=InitData.CurrentProfileExe;

  HelpContext:=ID_ProfileEditMemory;
end;

procedure TModernProfileEditorMemoryFrame.SetGame(const Game: TGame; const LoadFromTemplate: Boolean);
begin
  MemoryEdit.Value:=Game.Memory;
  XMSCheckBox.Checked:=Game.XMS;
  EMSCheckBox.Checked:=Game.EMS;
  UMBCheckBox.Checked:=Game.UMB;
  LoadFixCheckBox.Checked:=Game.LoadFix;
  LoadFixEdit.Value:=Game.LoadFixMemory;
  DOS32ACheckBox.Checked:=Game.UseDOS32A;
  Timer.Enabled:=True;
end;

procedure TModernProfileEditorMemoryFrame.ShowFrame;
begin
end;

function TModernProfileEditorMemoryFrame.CheckValue: Boolean;
begin
  result:=True;
end;

procedure TModernProfileEditorMemoryFrame.GetGame(const Game: TGame);
begin
  Game.Memory:=MemoryEdit.Value;
  Game.XMS:=XMSCheckBox.Checked;
  Game.EMS:=EMSCheckBox.Checked;
  Game.UMB:=UMBCheckBox.Checked;
  Game.LoadFix:=LoadFixCheckBox.Checked;
  Game.LoadFixMemory:=LoadFixEdit.Value;
  Game.UseDOS32A:=DOS32ACheckBox.Checked;
  Timer.Enabled:=False;
end;

procedure TModernProfileEditorMemoryFrame.TimerTimer(Sender: TObject);
Var B : Boolean;
    S : String;
begin
  If ProfileExe^=LastProfileExe then exit;
  LastProfileExe:=ProfileExe^;

  If Trim(ProfileExe^)='' then B:=False else begin
    S:=MakeAbsPath(ProfileExe^,PrgSetup.BaseDir);
    B:=FileExists(IncludeTrailingPathDelimiter(ExtractFilePath(S))+'DOS4GW.EXE');
    If not B then B:=FindStringInFile(MakeAbsPath(ProfileExe^,PrgSetup.BaseDir),'DOS4GW');
  end;
  If B then begin
    ImageList.GetBitmap(0,DOS32AInfoButton.Glyph);
    DOS32AInfoButton.Hint:=LanguageSetup.GameDOS32AUseable;
  end else begin
    ImageList.GetBitmap(1,DOS32AInfoButton.Glyph);
    DOS32AInfoButton.Hint:=LanguageSetup.GameDOS32ANotUseable;;
  end;
end;

procedure TModernProfileEditorMemoryFrame.DOS32AInfoButtonClick(Sender: TObject);
begin
MessageDlg(DOS32AInfoButton.Hint,mtInformation,[mbOK],0);
end;

end.
