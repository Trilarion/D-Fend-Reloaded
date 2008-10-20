unit WizardGameInfoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, ValEdit, ImgList,
  Menus, ToolWin, GameDBUnit, LinkFileUnit;

type
  TWizardGameInfoFrame = class(TFrame)
    InfoLabel: TLabel;
    Bevel: TBevel;
    GameInfoValueListEditor: TValueListEditor;
    FavouriteCheckBox: TCheckBox;
    UserDefinedDataLabel: TLabel;
    Tab: TStringGrid;
    NotesLabel: TLabel;
    NotesMemo: TRichEdit;
    AddButton: TSpeedButton;
    DelButton: TSpeedButton;
    Panel1: TPanel;
    ToolBar: TToolBar;
    SearchGameButton: TToolButton;
    SearchPopupMenu: TPopupMenu;
    ImageList: TImageList;
    BaseName: TLabeledEdit;
    AddUserDataPopupMenu: TPopupMenu;
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure SearchClick(Sender: TObject);
  private
    { Private-Deklarationen }
    LinkFile : TLinkFile;
    GameDB : TGameDB;
    Procedure LoadLinks;
    Procedure TabListForCell(ACol, ARow: Integer; var UseDropdownListForCell : Boolean);
    Procedure TabGetListForCell(ACol, ARow: Integer; DropdownListForCell : TStrings);
  public
    { Public-Deklarationen }
    Procedure Init(const AGameDB : TGameDB; const ALinkFile : TLinkFile);
    Procedure SetGameName(const AName : String; const Template : TGame);
    Procedure WriteDataToGame(const Game : TGame);
  end;

implementation

uses VistaToolsUnit, LanguageSetupUnit, CommonTools, ClassExtensions;

{$R *.dfm}

{ TWizardGameInfoFrame }

procedure TWizardGameInfoFrame.Init(const AGameDB: TGameDB; const ALinkFile : TLinkFile);
Var St : TStringList;
begin
  SetVistaFonts(self);

  InfoLabel.Font.Style:=[fsBold];

  InfoLabel.Caption:=LanguageSetup.WizardFormPage4Info;
  BaseName.EditLabel.Caption:=LanguageSetup.WizardFormBaseName;
  GameInfoValueListEditor.TitleCaptions.Clear;
  GameInfoValueListEditor.TitleCaptions.Add(LanguageSetup.Key);
  GameInfoValueListEditor.TitleCaptions.Add(LanguageSetup.Value);
  with GameInfoValueListEditor do begin
    Strings.Delete(0);
    Strings.Add(LanguageSetup.GameGenre+'=');
    ItemProps[Strings.Count-1].EditStyle:=esPickList;
    St:=AGameDB.GetGenreList; try ItemProps[Strings.Count-1].PickList.Assign(St); finally St.Free; end;
    Strings.Add(LanguageSetup.GameDeveloper+'=');
    ItemProps[Strings.Count-1].EditStyle:=esPickList;
    St:=AGameDB.GetDeveloperList; try ItemProps[Strings.Count-1].PickList.Assign(St); finally St.Free; end;
    Strings.Add(LanguageSetup.GamePublisher+'=');
    ItemProps[Strings.Count-1].EditStyle:=esPickList;
    St:=AGameDB.GetPublisherList; try ItemProps[Strings.Count-1].PickList.Assign(St); finally St.Free; end;
    Strings.Add(LanguageSetup.GameYear+'=');
    ItemProps[Strings.Count-1].EditStyle:=esPickList;
    St:=AGameDB.GetYearList; try ItemProps[Strings.Count-1].PickList.Assign(St); finally St.Free; end;
    Strings.Add(LanguageSetup.GameLanguage+'=');
    ItemProps[Strings.Count-1].EditStyle:=esPickList;
    St:=AGameDB.GetLanguageList; try ItemProps[Strings.Count-1].PickList.Assign(St); finally St.Free; end;
    Strings.Add(LanguageSetup.GameWWW+'=');
  end;
  FavouriteCheckBox.Caption:=LanguageSetup.GameFavorite;

  UserDefinedDataLabel.Caption:=LanguageSetup.ProfileEditorUserdefinedInfo+':';

  Tab:=TStringGrid(NewWinControlType(Tab,TStringGridEx,ctcmCopyProperties));
  TStringGridEx(Tab).OnListForCell:=TabListForCell;
  TStringGridEx(Tab).OnGetListForCell:=TabGetListForCell;

  Tab.Cells[0,0]:=LanguageSetup.Key;
  Tab.Cells[1,0]:=LanguageSetup.Value;
  Tab.RowHeights[0]:=GameInfoValueListEditor.RowHeights[0];
  Tab.RowHeights[1]:=GameInfoValueListEditor.RowHeights[0];
  AddButton.Hint:=RemoveUnderline(LanguageSetup.Add);
  DelButton.Hint:=RemoveUnderline(LanguageSetup.Del);

  NotesLabel.Caption:=LanguageSetup.GameNotes+':';

  Tab.ColWidths[0]:=GameInfoValueListEditor.ColWidths[0];
  Tab.ColWidths[1]:=Tab.ClientWidth-10-Tab.ColWidths[0];

  LinkFile:=ALinkFile;
  LoadLinks;

  GameDB:=AGameDB;
end;

procedure TWizardGameInfoFrame.LoadLinks;
begin
  LinkFile.AddLinksToMenu(SearchPopupMenu,0,1,SearchClick,1);
  SearchGameButton.Caption:=LanguageSetup.ProfileEditorLookUpGame+' '+LinkFile.Name[0];
  SearchGameButton.Hint:=LinkFile.Link[0];
end;

procedure TWizardGameInfoFrame.SearchClick(Sender: TObject);
begin
  Case (Sender as TComponent).Tag of
    0 : begin
          LinkFile.MoveToTop((Sender as TMenuItem).Caption);
          LoadLinks;
        end;
    1 : If LinkFile.EditFile(False) then LoadLinks;
    2 : OpenLink(LinkFile.Link[0],'<GAMENAME>',BaseName.Text);
  end;
end;

procedure TWizardGameInfoFrame.SetGameName(const AName: String; const Template : TGame);
Var St : TStringList;
    I,J  : Integer;
    S,T : String;
begin
  BaseName.Text:=AName;

  If Template<>nil then begin

    with GameInfoValueListEditor.Strings do begin
      If Trim(Template.Genre)<>'' then ValueFromIndex[0]:=Template.Genre;
      If Trim(Template.Developer)<>'' then ValueFromIndex[1]:=Template.Developer;
      If Trim(Template.Publisher)<>'' then ValueFromIndex[2]:=Template.Publisher;
      If Trim(Template.Year)<>'' then ValueFromIndex[3]:=Template.Year;
      If Trim(Template.Language)<>'' then ValueFromIndex[4]:=Template.Language;
      If Trim(Template.WWW)<>'' then ValueFromIndex[5]:=Template.WWW;
    end;

    St:=StringToStringList(Template.UserInfo);
    try
      If St.Count>0 then begin
        Tab.RowCount:=St.Count+1;
        For I:=0 to St.Count-1 do begin
          S:=St[I];
          J:=Pos('=',S);
          If J=0 then T:='' else begin T:=Trim(Copy(S,J+1,MaxInt)); S:=Trim(Copy(S,1,J-1)); end;
          Tab.Cells[0,I+1]:=S;
          Tab.Cells[1,I+1]:=T;
        end;
      end;
    finally
      St.Free;
    end;

    St:=StringToStringList(Template.Notes);
    try
      NotesMemo.Lines.Assign(St);
    finally
      St.Free;
    end;
  end;
end;

procedure TWizardGameInfoFrame.AddButtonClick(Sender: TObject);
Var M : TMenuItem;
    St : TStringList;
    I : Integer;
    P : TPoint;
begin
  If (Sender as TComponent).Tag>0 then begin
    If ((Sender as TComponent).Tag=1) or (Trim(Tab.Cells[0,Tab.RowCount-1])<>'') or (Trim(Tab.Cells[1,Tab.RowCount-1])<>'') then begin
      Tab.RowCount:=Tab.RowCount+1;
      Tab.RowHeights[Tab.RowCount-1]:=GameInfoValueListEditor.RowHeights[0];
    end;
    Tab.Row:=Tab.RowCount-1;
    Tab.Col:=0;
    If (Sender as TComponent).Tag=2 then begin
      Tab.Cells[0,Tab.RowCount-1]:=RemoveUnderline((Sender as TMenuItem).Caption);
      Tab.Col:=1;
    end;

    Tab.SetFocus;
    exit;
  end;

  St:=GameDB.GetUserKeys;
  try
    AddUserDataPopupMenu.Items.Clear;
    M:=TMenuItem.Create(AddUserDataPopupMenu); M.Caption:=LanguageSetup.AddNewEmptyLine; M.Tag:=1; M.OnClick:=AddButtonClick;
    AddUserDataPopupMenu.Items.Add(M);
    M:=TMenuItem.Create(AddUserDataPopupMenu); M.Caption:='-';
    AddUserDataPopupMenu.Items.Add(M);
    For I:=0 to St.Count-1 do begin
      M:=TMenuItem.Create(AddUserDataPopupMenu); M.Caption:=St[I]; M.Tag:=2; M.OnClick:=AddButtonClick;
      AddUserDataPopupMenu.Items.Add(M);
    end;
  finally
    St.Free;
  end;

  P:=ClientToScreen(Point((Sender as TControl).Left,(Sender as TControl).Top));
  AddUserDataPopupMenu.Popup(P.X+5,P.Y+5);
end;

procedure TWizardGameInfoFrame.DelButtonClick(Sender: TObject);
Var I : Integer;
begin
  If Tab.RowCount=2 then begin
    Tab.Cells[0,1]:='';
    Tab.Cells[1,1]:='';
    exit;
  end;

  If Tab.Row<0 then begin
    MessageDlg(LanguageSetup.MessageNoRecordSelected,mtError,[mbOK],0);
    exit;
  end;

  For I:=Tab.Row+1 to Tab.RowCount-1 do begin
    Tab.Cells[0,I-1]:=Tab.Cells[0,I];
    Tab.Cells[1,I-1]:=Tab.Cells[1,I];
  end;
  Tab.RowCount:=Tab.RowCount-1;
end;

procedure TWizardGameInfoFrame.WriteDataToGame(const Game: TGame);
Var St : TStringList;
    I : Integer;
    S,T : String;
begin
  Game.Name:=BaseName.Text;

  with GameInfoValueListEditor.Strings do begin
    Game.Genre:=ValueFromIndex[0];
    Game.Developer:=ValueFromIndex[1];
    Game.Publisher:=ValueFromIndex[2];
    Game.Year:=ValueFromIndex[3];
    Game.Language:=ValueFromIndex[4];
    Game.WWW:=ValueFromIndex[5];
  end;
  Game.Favorite:=FavouriteCheckBox.Checked;

  St:=TStringList.Create;
  try
    For I:=1 to Tab.RowCount-1 do begin
      S:=Trim(Tab.Cells[0,I]); T:=Trim(Tab.Cells[1,I]);
      If (S<>'') or (T<>'') then St.Add(S+'='+T);
    end;
    If St.Count=0 then Game.UserInfo:='' else Game.UserInfo:=StringListToString(St);
  finally
    St.Free;
  end;

  Game.Notes:=StringListToString(NotesMemo.Lines);
end;

Procedure TWizardGameInfoFrame.TabListForCell(ACol, ARow: Integer; var UseDropdownListForCell : Boolean);
begin
  UseDropdownListForCell:=(ACol=1);
end;

Procedure TWizardGameInfoFrame.TabGetListForCell(ACol, ARow: Integer; DropdownListForCell : TStrings);
Var St : TStringList;
begin
  DropdownListForCell.Clear;
  St:=GameDB.GetKeyValueList(Tab.Cells[0,ARow]);
  try
    DropdownListForCell.AddStrings(St);
  finally
    St.Free;
  end;
end;

end.
