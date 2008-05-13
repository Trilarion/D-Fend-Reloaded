unit SetupFrameServiceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, SetupFormUnit, GameDBUnit;

type
  TSetupFrameService = class(TFrame, ISetupFrame)
    Service3Button: TBitBtn;
    Service4Button: TBitBtn;
    Service1Button: TBitBtn;
    Service2Button: TBitBtn;
    Service5Button: TBitBtn;
    procedure ButtonWork(Sender: TObject);
  private
    { Private-Deklarationen }
    GameDB : TGameDB;
  public
    { Public-Deklarationen }
    Function GetName : String;
    Procedure InitGUIAndLoadSetup(InitData : TInitData);
    Procedure LoadLanguage;
    Procedure DOSBoxDirChanged;
    Procedure ShowFrame(const AdvencedMode : Boolean);
    Procedure RestoreDefaults;
    Procedure SaveSetup;
  end;

implementation

uses LanguageSetupUnit, VistaToolsUnit, GameDBToolsUnit, PrgConsts;

{$R *.dfm}

{ TSetupFrameService }

function TSetupFrameService.GetName: String;
begin
  result:=LanguageSetup.SetupFormServiceSheet;
end;

procedure TSetupFrameService.InitGUIAndLoadSetup(InitData: TInitData);
begin
  GameDB:=InitData.GameDB;

  NoFlicker(Service1Button);
  NoFlicker(Service2Button);
  NoFlicker(Service3Button);
  NoFlicker(Service4Button);
end;

procedure TSetupFrameService.LoadLanguage;
begin
  Service1Button.Caption:=LanguageSetup.SetupFormService1;
  Service2Button.Caption:=LanguageSetup.SetupFormService2;
  Service3Button.Caption:=LanguageSetup.SetupFormService3;
  Service4Button.Caption:=LanguageSetup.SetupFormService4;
end;

procedure TSetupFrameService.DOSBoxDirChanged;
begin
end;

procedure TSetupFrameService.ShowFrame(const AdvencedMode: Boolean);
begin
  Service1Button.Visible:=AdvencedMode;
  Service2Button.Visible:=AdvencedMode;
end;

procedure TSetupFrameService.RestoreDefaults;
begin
end;

procedure TSetupFrameService.SaveSetup;
begin
end;

procedure TSetupFrameService.ButtonWork(Sender: TObject);
Var I : Integer;
begin
  Case (Sender as TComponent).Tag of
    0 : DeleteOldFiles;
    1 : ReplaceAbsoluteDirs(GameDB);
    2 : begin
          Enabled:=False;
          try
            I:=GameDB.IndexOf(DosBoxDOSProfile);
            If I>=0 then begin
              If MessageDlg(LanguageSetup.SetupFormService3Confirmation,mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
              GameDB.Delete(I);
            end;
            BuildDefaultDosProfile(GameDB);
          finally
            Enabled:=True;
          end;
        end;
    3 : begin
          BuildDefaultProfile;
          ReBuildTemplates;
        end;
    4 : CreateCheckSumsForAllGames(GameDB);
  end;
end;

end.
