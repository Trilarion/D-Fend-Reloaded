unit SetupFrameGamesListTreeAppearanceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, ExtCtrls, Menus, Buttons, ComCtrls, SetupFormUnit,
  GameDBUnit;

type
  TSetupFrameGamesListTreeAppearance = class(TFrame, ISetupFrame)
    TreeViewBackgroundRadioButton1: TRadioButton;
    TreeViewBackgroundRadioButton2: TRadioButton;
    TreeViewBackgroundColorBox: TColorBox;
    TreeViewFontSizeEdit: TSpinEdit;
    TreeViewFontSizeLabel: TLabel;
    TreeViewFontColorBox: TColorBox;
    TreeViewFontColorLabel: TLabel;
    TreeViewGroupsLabel: TLabel;
    TreeViewGroupsEdit: TRichEdit;
    TreeViewGroupsInfoLabel: TLabel;
    UserKeysList: TBitBtn;
    PopupMenu: TPopupMenu;
    ReselectFilterCheckBox: TCheckBox;
    procedure TreeViewBackgroundColorBoxChange(Sender: TObject);
    procedure UserKeysListClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
  private
    { Private-Deklarationen }
    FGameDB : TGameDB;
    Procedure PopupMenuWork(Sender : TObject);
  public
    { Public-Deklarationen }
    Function GetName : String;
    Procedure InitGUIAndLoadSetup(InitData : TInitData);
    Procedure BeforeChangeLanguage;
    Procedure LoadLanguage;
    Procedure DOSBoxDirChanged;
    Procedure ShowFrame(const AdvencedMode : Boolean);
    procedure HideFrame;
    Procedure RestoreDefaults;
    Procedure SaveSetup;
  end;

implementation

uses LanguageSetupUnit, VistaToolsUnit, PrgSetupUnit, CommonTools, HelpConsts,
     TextEditPopupUnit;

{$R *.dfm}

{ TSetupFrameGamesListTreeAppearance }

function TSetupFrameGamesListTreeAppearance.GetName: String;
begin
  result:=LanguageSetup.SetupFormListViewSheet3;
end;

procedure TSetupFrameGamesListTreeAppearance.InitGUIAndLoadSetup(InitData: TInitData);
Var S : String;
    C : TColor;
    St : TStringList;
begin
  NoFlicker(ReselectFilterCheckBox);
  NoFlicker(TreeViewBackgroundRadioButton1);
  NoFlicker(TreeViewBackgroundRadioButton2);
  NoFlicker(TreeViewBackgroundColorBox);
  NoFlicker(TreeViewFontSizeEdit);
  NoFlicker(TreeViewFontColorBox);
  {NoFlicker(TreeViewGroupsEdit); - otherwise the text will disappear}

  SetRichEditPopup(TreeViewGroupsEdit);

  ReselectFilterCheckBox.Checked:=PrgSetup.RestoreFilter;

  S:=Trim(PrgSetup.GamesTreeViewBackground);
  If S='' then TreeViewBackgroundRadioButton1.Checked:=True else begin
    try
      C:=StringToColor(S); TreeViewBackgroundRadioButton2.Checked:=True; TreeViewBackgroundColorBox.Selected:=C;
    except
      TreeViewBackgroundRadioButton1.Checked:=True;
    end;
  end;
  S:=Trim(PrgSetup.GamesTreeViewFontColor);
  If S='' then TreeViewFontColorBox.Selected:=clWindowText else begin
    try TreeViewFontColorBox.Selected:=StringToColor(S); except TreeViewFontColorBox.Selected:=clWindowText; end;
  end;
  TreeViewFontSizeEdit.Value:=PrgSetup.GamesTreeViewFontSize;
  St:=StringToStringList(PrgSetup.UserGroups);
  try TreeViewGroupsEdit.Lines.AddStrings(St); finally St.Free; end;

  FGameDB:=InitData.GameDB;
end;

procedure TSetupFrameGamesListTreeAppearance.BeforeChangeLanguage;
begin
end;

procedure TSetupFrameGamesListTreeAppearance.LoadLanguage;
Var GermanColorNames : Boolean;
begin
  ReselectFilterCheckBox.Caption:=LanguageSetup.SetupFormStartRestoreFilter;

  GermanColorNames:=(ExtUpperCase(ExtractFileName(LanguageSetup.SetupFile))='DEUTSCH.INI') or (ExtUpperCase(ExtractFileName(LanguageSetup.SetupFile))='GERMAN.INI');

  TreeViewBackgroundRadioButton1.Caption:=LanguageSetup.SetupFormBackgroundColorDefault;
  TreeViewBackgroundRadioButton2.Caption:=LanguageSetup.SetupFormBackgroundColorColor;
  If GermanColorNames
    then TreeViewBackgroundColorBox.Style:=TreeViewBackgroundColorBox.Style+[cbPrettyNames]
    else TreeViewBackgroundColorBox.Style:=TreeViewBackgroundColorBox.Style-[cbPrettyNames];
  TreeViewFontSizeLabel.Caption:=LanguageSetup.SetupFormFontSize;
  TreeViewFontColorLabel.Caption:=LanguageSetup.SetupFormFontColor;
  If GermanColorNames
    then TreeViewFontColorBox.Style:=TreeViewFontColorBox.Style+[cbPrettyNames]
    else TreeViewFontColorBox.Style:=TreeViewFontColorBox.Style-[cbPrettyNames];
  TreeViewGroupsLabel.Caption:=LanguageSetup.SetupFormTreeViewGroupLabel;
  UserKeysList.Caption:=LanguageSetup.SetupFormTreeViewGroupAddButton;
  TreeViewGroupsInfoLabel.Caption:=LanguageSetup.SetupFormTreeViewGroupInfoLabel;

  HelpContext:=ID_FileOptionsAppearanceTree;
end;

procedure TSetupFrameGamesListTreeAppearance.DOSBoxDirChanged;
begin
end;

procedure TSetupFrameGamesListTreeAppearance.ShowFrame(const AdvencedMode: Boolean);
begin
end;

procedure TSetupFrameGamesListTreeAppearance.HideFrame;
begin
end;

procedure TSetupFrameGamesListTreeAppearance.RestoreDefaults;
begin
  ReselectFilterCheckBox.Checked:=True;
  TreeViewBackgroundColorBox.Selected:=clBlack;
  TreeViewBackgroundRadioButton1.Checked:=True;
  TreeViewFontSizeEdit.Value:=9;
  TreeViewFontColorBox.Selected:=clBlack;
  TreeViewGroupsEdit.Lines.Clear;
end;

procedure TSetupFrameGamesListTreeAppearance.SaveSetup;
Var St1,St2 : TStringList;
    I : Integer;
begin
  PrgSetup.RestoreFilter:=ReselectFilterCheckBox.Checked;
  If TreeViewBackgroundRadioButton1.Checked then PrgSetup.GamesTreeViewBackground:='';
  If TreeViewBackgroundRadioButton2.Checked then PrgSetup.GamesTreeViewBackground:=ColorToString(TreeViewBackgroundColorBox.Selected);
  PrgSetup.GamesTreeViewFontSize:=TreeViewFontSizeEdit.Value;
  PrgSetup.GamesTreeViewFontColor:=ColorToString(TreeViewFontColorBox.Selected);

  St1:=TStringList.Create;
  St2:=TStringList.Create;
  try
    For I:=0 to TreeViewGroupsEdit.Lines.Count-1 do If St2.IndexOf(ExtUpperCase(TreeViewGroupsEdit.Lines[I]))<0 then begin
      St1.Add(TreeViewGroupsEdit.Lines[I]);
      St2.Add(ExtUpperCase(TreeViewGroupsEdit.Lines[I]));
    end;
    PrgSetup.UserGroups:=StringListToString(St1);
  finally
    St1.Free;
    St2.Free;
  end;
end;

procedure TSetupFrameGamesListTreeAppearance.TreeViewBackgroundColorBoxChange(Sender: TObject);
begin
  TreeViewBackgroundRadioButton2.Checked:=True;
end;

procedure TSetupFrameGamesListTreeAppearance.UserKeysListClick(Sender: TObject);
Var P : TPoint;
begin
  P:=ClientToScreen(Point(UserKeysList.Left+5,UserKeysList.Top+5));
  PopupMenu.Popup(P.X,P.Y);
end;

procedure TSetupFrameGamesListTreeAppearance.PopupMenuPopup(Sender: TObject);
Var I : Integer;
    St,St2 : TStringList;
    M : TMenuItem;
begin
  PopupMenu.Items.Clear;

  St2:=TStringList.Create;
  try
    For I:=0 to TreeViewGroupsEdit.Lines.Count-1 do St2.Add(ExtUpperCase(TreeViewGroupsEdit.Lines[I]));
    St:=FGameDB.GetUserKeys;
    try
      For I:=0 to St.Count-1 do If St2.IndexOf(ExtUpperCase(St[I]))<0 then begin
        M:=TMenuItem.Create(PopupMenu);
        M.Caption:=St[I];
        M.OnClick:=PopupMenuWork;
        PopupMenu.Items.Add(M);
      end;
    finally
      St.Free;
    end;
  finally
    St2.Free;
  end;
end;

procedure TSetupFrameGamesListTreeAppearance.PopupMenuWork(Sender: TObject);
begin
  TreeViewGroupsEdit.Lines.Add(RemoveUnderline((Sender as TMenuItem).Caption));
end;

end.
