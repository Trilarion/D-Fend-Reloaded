unit ExpandImageFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TExpandImageForm = class(TForm)
    OKButton: TBitBtn;
    CancelButton: TBitBtn;
    FileNameEdit: TLabeledEdit;
    FileNameButton: TSpeedButton;
    FolderEdit: TLabeledEdit;
    FolderButton: TSpeedButton;
    OpenFolderCheckBox: TCheckBox;
    OpenDialog: TOpenDialog;
    ImageTypeRadioGroup: TRadioGroup;
    HelpButton: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ButtonWork(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure HelpButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private-Deklarationen }
    Function ExpandImage(const FileName, Dir : String; const ImageType : Integer) : Boolean;
  public
    { Public-Deklarationen }
  end;

var
  ExpandImageForm: TExpandImageForm;

Function ShowExpandImageDialog(const AOwner : TComponent) : Boolean;

implementation

uses ShellAPI, VistaToolsUnit, LanguageSetupUnit, CommonTools, PrgSetupUnit,
     GameDBUnit, DOSBoxUnit, ImageTools, HelpConsts, IconLoaderUnit;

{$R *.dfm}

procedure TExpandImageForm.FormCreate(Sender: TObject);
begin
  SetVistaFonts(self);
  Font.Charset:=CharsetNameToFontCharSet(LanguageSetup.CharsetName);

  Caption:=LanguageSetup.ExtractImageCaption;
  FileNameEdit.EditLabel.Caption:=LanguageSetup.ExtractImageImageFile;
  FileNameButton.Hint:=LanguageSetup.ChooseFile;
  FolderEdit.EditLabel.Caption:=LanguageSetup.ExtractImageDestinationFolder;
  FolderButton.Hint:=LanguageSetup.ChooseFolder;
  OpenFolderCheckBox.Caption:=LanguageSetup.ExtractImageOpenDestinationFolder;

  ImageTypeRadioGroup.Caption:=LanguageSetup.ExtractImageImageType;
  ImageTypeRadioGroup.Items[0]:=LanguageSetup.ExtractImageImageTypeFloppy;
  ImageTypeRadioGroup.Items[1]:=LanguageSetup.ExtractImageImageTypeHD;
  ImageTypeRadioGroup.Items[2]:=LanguageSetup.ExtractImageImageTypeISO;
  ImageTypeRadioGroup.ItemIndex:=0;
  OKButton.Caption:=LanguageSetup.OK;
  CancelButton.Caption:=LanguageSetup.Cancel;
  HelpButton.Caption:=LanguageSetup.Help;
  OpenDialog.Title:=LanguageSetup.ExtractImageOpenFileTitle;
  OpenDialog.Filter:=LanguageSetup.ExtractImageOpenFileFilter;

  UserIconLoader.DialogImage(DI_SelectFile,FileNameButton);
  UserIconLoader.DialogImage(DI_SelectFolder,FolderButton);
end;

procedure TExpandImageForm.ButtonWork(Sender: TObject);
Var S : String;
begin
  Case (Sender as TComponent).Tag of
    0 : begin
          S:=Trim(FileNameEdit.Text);
          If S='' then S:=PrgSetup.BaseDir else S:=ExtractFilePath(MakeAbsPath(S,PrgSetup.BaseDir));
          OpenDialog.InitialDir:=S;
          If OpenDialog.Execute then begin
            FileNameEdit.Text:=OpenDialog.FileName;
            If Trim(ExtUpperCase(ExtractFileExt(FileNameEdit.Text)))='.ISO' then ImageTypeRadioGroup.ItemIndex:=2 else ImageTypeRadioGroup.ItemIndex:=0;
          end;
        end;
    1 : begin
          S:=Trim(FolderEdit.Text);
          If S='' then S:=PrgSetup.BaseDir else S:=IncludeTrailingPathDelimiter(MakeAbsPath(IncludeTrailingPathDelimiter(S),PrgSetup.BaseDir));
          If SelectDirectory(Handle,LanguageSetup.ExtractImageFolderTitle,S) then FolderEdit.Text:=S;
        end;  
  end;
end;

procedure TExpandImageForm.OKButtonClick(Sender: TObject);
Var FileName, Dir : String;
begin
  FileName:=Trim(FileNameEdit.Text);
  If FileName='' then begin
    MessageDlg(LanguageSetup.MessageNoFileName,mtError,[mbOk],0);
    ModalResult:=mrNone; exit;
  end;
  FileName:=MakeAbsPath(FileName,PrgSetup.BaseDir);
  If not FileExists(FileName) then begin
    MessageDlg(Format(LanguageSetup.MessageFileNotFound,[FileName]),mtError,[mbOk],0);
    ModalResult:=mrNone; exit;
  end;

  Dir:=Trim(FolderEdit.Text);
  If Dir='' then begin
    MessageDlg(LanguageSetup.MessageNoFolderName,mtError,[mbOk],0);
    ModalResult:=mrNone; exit;
  end;
  Dir:=IncludeTrailingPathDelimiter(MakeAbsPath(IncludeTrailingPathDelimiter(Dir),PrgSetup.BaseDir));
  If not ForceDirectories(Dir) then begin
    MessageDlg(Format(LanguageSetup.MessageCouldNotCreateDir,[FileName]),mtError,[mbOk],0);
    ModalResult:=mrNone; exit;
  end;

  if not ExpandImage(FileName,Dir,ImageTypeRadioGroup.ItemIndex) then begin
    ModalResult:=mrNone; exit;
  end;

  If OpenFolderCheckBox.Checked then ShellExecute(Handle,'explore',PChar(Dir),nil,PChar(Dir),SW_SHOW);
end;

function TExpandImageForm.ExpandImage(const FileName, Dir: String; const ImageType : Integer): Boolean;
Var DefaultGame, TempGame : TGame;
    TempGameFileName : String;
    FreeDOS : String;
    St : TStringList;
begin
  result:=False;

  FreeDOS:=Trim(PrgSetup.PathToFREEDOS);
  If FreeDOS<>'' then FreeDOS:=IncludeTrailingPathDelimiter(MakeAbsPath(FreeDOS,PrgSetup.BaseDir));
  If (FreeDOS='') or (not DirectoryExists(FreeDOS)) then begin
    MessageDlg(LanguageSetup.ProfileEditorNeedFreeDOS,mtError,[mbOK],0);
    exit;
  end;

  TempGameFileName:=TempDir+'TempDOSBox.prof';
  TempGame:=TGame.Create(TempGameFileName);
  try
    DefaultGame:=TGame.Create(PrgSetup);
    try TempGame.AssignFrom(DefaultGame); finally DefaultGame.Free; end;

    TempGame.Autoexec:='';
    TempGame.AutoexecOverridegamestart:=True;
    TempGame.AutoexecOverrideMount:=False;
    TempGame.AutoexecBootImage:='';

    TempGame.NrOfMounts:=3;
    TempGame.Mount0:=FreeDOS+';DRIVE;C;False;;105';
    Case ImageType of
      0 : TempGame.Mount1:=FileName+';FLOPPYIMAGE;A;;;';
      1 : TempGame.Mount1:=FileName+';IMAGE;A;;;512,63,16,'+GetGeometryFromFile(FileName);
      2 : TempGame.Mount1:=FileName+';CDROMIMAGE;A;;;';
    end;
    TempGame.Mount2:=Dir+';DRIVE;D;False;;1000';

    St:=TStringList.Create;
    try
      St.Add('C:\4DOS.COM /C COPY A:\*.* D:\ /S');
      St.Add('exit');
      TempGame.Autoexec:=StringListToString(St);
    finally
      St.Free;
    end;

    TempGame.StoreAllValues;
    RunCommand(TempGame,'',True);
  finally
    TempGame.Free;
  end;

  result:=True;
end;

procedure TExpandImageForm.HelpButtonClick(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTEXT,ID_ExtrasImagesExtractToFolder);
end;

procedure TExpandImageForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_F1) and (Shift=[]) then HelpButtonClick(Sender);
end;

{ global }

Function ShowExpandImageDialog(const AOwner : TComponent) : Boolean;
begin
  ExpandImageForm:=TExpandImageForm.Create(AOwner);
  try
    result:=(ExpandImageForm.ShowModal=mrOK);
  finally
    ExpandImageForm.Free;
  end;
end;

end.

