unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ComCtrls, ExtCtrls, ToolWin, ImgList, Menus,
  AppEvnts, GameDBUnit, GameDBToolsUnit, ViewFilesFrameUnit, LinkFileUnit,
  HelpTools;

{
Homepage:
- More demos in demo package

0.8:
- Help: GUI for setting default capture directory, icon size, icon sets and renaming prof files, Multiple shortcuts dialog
- Option for "DOSBOX:" path names for extra program files to run
- More files (with checksums) per template for identifying games
- Scan folder: Option: Profil name from game file / folder name, better results table
- Wizard and zip import: Better way of manual auto setup template selection
- Next DOSBox version
- Better image scaling algorithm
- http://www.kegel.com/nansi/
- Direct downloading & installation of zip packages (?)
- Making bootable hard disk images
}

type
  TDFendReloadedMainForm = class(TForm)
    TreeView: TTreeView;
    Splitter: TSplitter;
    ImageList: TImageList;
    MainMenu: TMainMenu;
    MenuFile: TMenuItem;
    MenuProfileAdd: TMenuItem;
    MenuProfileEdit: TMenuItem;
    MenuProfileDelete: TMenuItem;
    MenuFileSetup: TMenuItem;
    N2: TMenuItem;
    MenuFileQuit: TMenuItem;
    MenuRun: TMenuItem;
    MenuRunGame: TMenuItem;
    MenuRunSetup: TMenuItem;
    CoolBar: TCoolBar;
    ToolBar: TToolBar;
    ButtonRun: TToolButton;
    ToolButton2: TToolButton;
    ButtonAdd: TToolButton;
    ButtonEdit: TToolButton;
    ButtonDelete: TToolButton;
    PopupMenu: TPopupMenu;
    PopupRunGame: TMenuItem;
    PopupRunSetup: TMenuItem;
    N3: TMenuItem;
    PopupEdit: TMenuItem;
    PopupDelete: TMenuItem;
    N4: TMenuItem;
    PopupOpenFolder: TMenuItem;
    PopupMarkAsFavorite: TMenuItem;
    MenuExtras: TMenuItem;
    MenuProfileOpenFolder: TMenuItem;
    MenuProfileMarkAsFavorite: TMenuItem;
    MenuHelp: TMenuItem;
    N5: TMenuItem;
    MenuRunRunDosBox: TMenuItem;
    MenuRunOpenDosBoxConfig: TMenuItem;
    MenuProfile: TMenuItem;
    N6: TMenuItem;
    MenuFileExportGamesList: TMenuItem;
    SaveDialog: TSaveDialog;
    MenuExtrasIconManager: TMenuItem;
    ListviewImageList: TImageList;
    PopupOpenDataFolder: TMenuItem;
    MenuProfileOpenDataFolder: TMenuItem;
    MenuExtrasViewLogs: TMenuItem;
    MenuProfileWWW: TMenuItem;
    PopupWWW: TMenuItem;
    MenuExtrasTemplates: TMenuItem;
    TrayIcon: TTrayIcon;
    ApplicationEvents: TApplicationEvents;
    MenuExtrasOpenGamesFolder: TMenuItem;
    MenuProfileDeinstall: TMenuItem;
    PopupDeinstall: TMenuItem;
    Panel1: TPanel;
    ListView: TListView;
    Splitter1: TSplitter;
    ScreenshotImageList: TImageList;
    MenuView: TMenuItem;
    MenuViewsShowScreenshots: TMenuItem;
    ScreenshotPopupMenu: TPopupMenu;
    ScreenshotPopupOpen: TMenuItem;
    N7: TMenuItem;
    ScreenshotPopupRefresh: TMenuItem;
    N8: TMenuItem;
    ScreenshotPopupDelete: TMenuItem;
    ScreenshotPopupDeleteAll: TMenuItem;
    ScreenshotPopupCopy: TMenuItem;
    ScreenshotPopupSave: TMenuItem;
    ScreenshotSaveDialog: TSaveDialog;
    MenuExtrasDeinstallMultipleGames: TMenuItem;
    MenuFileImport: TMenuItem;
    MenuFileExport: TMenuItem;
    N10: TMenuItem;
    MenuFileCreateConf: TMenuItem;
    MenuFileImportConfFile: TMenuItem;
    OpenDialog: TOpenDialog;
    MenuProfileCopy: TMenuItem;
    PopupCopy: TMenuItem;
    MenuProfileAddWithWizard: TMenuItem;
    MenuHelpDosBox: TMenuItem;
    MenuHelpDosBoxFAQ: TMenuItem;
    MenuHelpDosBoxHotkeys: TMenuItem;
    MenuHelpDosBoxCompatibility: TMenuItem;
    MenuHelpAbandonware: TMenuItem;
    MenuHelpAbout: TMenuItem;
    ToolButton1: TToolButton;
    SearchEdit: TEdit;
    MenuViewsShowTree: TMenuItem;
    MenuViewsShowSearchBox: TMenuItem;
    MenuViewsShowExtraInfo: TMenuItem;
    N12: TMenuItem;
    MenuViewsList: TMenuItem;
    MenuViewsIcons: TMenuItem;
    ListviewIconImageList: TImageList;
    MenuProfileCreateShortcut: TMenuItem;
    PopupCreateShortcut: TMenuItem;
    MenuHelpDosBoxReadme: TMenuItem;
    MenuExtrasCreateImage: TMenuItem;
    MenuHelpDosBoxHotkeysDosbox: TMenuItem;
    MenuHelpDosBoxIntro: TMenuItem;
    MenuHelpDosBoxIntroDosBox: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    MenuExtrasTransferProfiles: TMenuItem;
    MenuExtrasBuildInstaller: TMenuItem;
    MenuRunRunDosBoxKeyMapper: TMenuItem;
    MenuHelpDemoCompatibility: TMenuItem;
    MenuProfileAddFromTemplate: TMenuItem;
    AddButtonPopupMenu: TPopupMenu;
    AddButtonMenuAdd: TMenuItem;
    AddButtonMenuAddFromTemplate: TMenuItem;
    AddButtonMenuAddWithWizard: TMenuItem;
    N17: TMenuItem;
    MenuExtrasChangeProfiles: TMenuItem;
    MenuProfileOpenFileInDataFolder: TMenuItem;
    MenuProfileMakeInstaller: TMenuItem;
    PopupMakeInstaller: TMenuItem;
    PopupOpenFileInDataFolder: TMenuItem;
    MenuViewsShowTooltips: TMenuItem;
    MenuHelpUpdates: TMenuItem;
    MenuProfileViewConfFile: TMenuItem;
    PopupViewConfFile: TMenuItem;
    MenuFileImportProfFile: TMenuItem;
    ScreenshotPopupImport: TMenuItem;
    MenuHelpHomepage: TMenuItem;
    MenuViewsListNoIcons: TMenuItem;
    MenuViewsSimpleList: TMenuItem;
    MenuViewsSimpleListNoIcons: TMenuItem;
    MenuViewsSmallIcons: TMenuItem;
    N19: TMenuItem;
    PopupViews: TMenuItem;
    PopupSimpleListNoIcons: TMenuItem;
    PopupSimpleList: TMenuItem;
    PopupListNoIcons: TMenuItem;
    PopupList: TMenuItem;
    PopupSmallIcons: TMenuItem;
    PopupIcons: TMenuItem;
    N20: TMenuItem;
    MenuHelpStatistics: TMenuItem;
    MenuHelpForum: TMenuItem;
    MenuHelpFAQs: TMenuItem;
    MenuHelpMakeDFRBetter: TMenuItem;
    MenuHelpMakeBetterIcons: TMenuItem;
    MenuHelpMakeTranslation: TMenuItem;
    CapturePageControl: TPageControl;
    CaptureScreenshotsTab: TTabSheet;
    CaptureSoundTab: TTabSheet;
    ScreenshotListView: TListView;
    SoundListView: TListView;
    SoundPopupMenu: TPopupMenu;
    SoundPopupOpen: TMenuItem;
    N21: TMenuItem;
    SoundPopupRefresh: TMenuItem;
    N22: TMenuItem;
    SoundPopupImport: TMenuItem;
    SoundPopupSave: TMenuItem;
    SoundPopupDelete: TMenuItem;
    SoundPopupDeleteAll: TMenuItem;
    SoundPopupSaveOgg: TMenuItem;
    SoundPopupSaveMp3: TMenuItem;
    SoundPopupSaveMp3All: TMenuItem;
    SoundPopupSaveOggAll: TMenuItem;
    N23: TMenuItem;
    TreeViewPopupMenu: TPopupMenu;
    TreeViewPopupEditUserFilters: TMenuItem;
    N24: TMenuItem;
    ScreenshotPopupUseAsBackground: TMenuItem;
    ScreenshotPopupRename: TMenuItem;
    SoundPopupRename: TMenuItem;
    MenuExtrasCreateISOImage: TMenuItem;
    MenuFileCreateProf: TMenuItem;
    MenuExtrasCreateIMGImage: TMenuItem;
    MenuExtrasWriteIMGImage: TMenuItem;
    MenuFileCreateXML: TMenuItem;
    MenuExtrasExtractImage: TMenuItem;
    IdleAddonTimer: TTimer;
    MenuExtrasImageFiles: TMenuItem;
    N25: TMenuItem;
    N1: TMenuItem;
    MenuExtrasImageFromFolder: TMenuItem;
    ScreenshotsInfoPanel: TPanel;
    SoundInfoPanel: TPanel;
    TrayIconPopupMenu: TPopupMenu;
    TrayIconPopupRestore: TMenuItem;
    N9: TMenuItem;
    N26: TMenuItem;
    TrayIconPopupClose: TMenuItem;
    TrayIconPopupAddProfile: TMenuItem;
    TrayIconPopupAddFromTemplate: TMenuItem;
    TrayIconPopupAddWithWizard: TMenuItem;
    N27: TMenuItem;
    TrayIconPopupRun: TMenuItem;
    MenuProfileAddScummVM: TMenuItem;
    N28: TMenuItem;
    MenuRunRunScummVM: TMenuItem;
    MenuRunOpenScummVMConfig: TMenuItem;
    AddButtonMenuAddScummVM: TMenuItem;
    PopupViewINIFile: TMenuItem;
    MenuHelpScummVM: TMenuItem;
    MenuProfileViewIniFile: TMenuItem;
    MenuHelpDosBoxHomepage: TMenuItem;
    MenuHelpScummVMReadme: TMenuItem;
    MenuHelpScummVMFAQ: TMenuItem;
    N15: TMenuItem;
    MenuHelpScummVMHomepage: TMenuItem;
    MenuHelpScummVMCompatibility: TMenuItem;
    MenuHelpScummVMCompatibilityIntern: TMenuItem;
    TrayIconPopupAddScummVMProfile: TMenuItem;
    MenuFileImportXMLFile: TMenuItem;
    ButtonClose: TToolButton;
    ButtonRunSetup: TToolButton;
    MenuExtrasCheckProfiles: TMenuItem;
    MenuHelpOperationMode: TMenuItem;
    ZipInfoPanel: TPanel;
    ZipInfoLabel: TLabel;
    CaptureVideoTab: TTabSheet;
    VideoListView: TListView;
    VideoInfoPanel: TPanel;
    VideoPopupMenu: TPopupMenu;
    VideoPopupOpen: TMenuItem;
    MenuItem2: TMenuItem;
    VideoPopupRefresh: TMenuItem;
    MenuItem4: TMenuItem;
    VideoPopupImport: TMenuItem;
    VideoPopupSave: TMenuItem;
    VideoPopupRename: TMenuItem;
    VideoPopupDelete: TMenuItem;
    VideoPopupDeleteAll: TMenuItem;
    VideoPopupOpenExternal: TMenuItem;
    SoundPopupOpenExternal: TMenuItem;
    DataFilesTab: TTabSheet;
    MenuHelpCreateAutoSetupTemplates: TMenuItem;
    MenuProfileSearchGame: TMenuItem;
    PopupSearchGame: TMenuItem;
    MenuRunExtraFile: TMenuItem;
    PopupRunExtraFile: TMenuItem;
    MenuViewsScreenshots: TMenuItem;
    PopupScreenshots: TMenuItem;
    ListviewScreenshotImageList: TImageList;
    N29: TMenuItem;
    ScreenshotPopupUseInScreenshotList: TMenuItem;
    PopupMakeZipArchive: TMenuItem;
    N30: TMenuItem;
    MenuProfileMakeZipArchive: TMenuItem;
    N31: TMenuItem;
    MenuFileImportZIPFile: TMenuItem;
    MenuFileCreateZIP: TMenuItem;
    MenuProfileAddWindows: TMenuItem;
    AddButtonMenuAddWindows: TMenuItem;
    TrayIconPopupAddWindowsProfile: TMenuItem;
    MenuHelpHelp: TMenuItem;
    MenuHelpHelpContent: TMenuItem;
    MenuHelpIntroduction: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    MenuExtrasBuildZipPackages: TMenuItem;
    MenuHelpAddingGames: TMenuItem;
    MenuProfileOpenCaptureFolder: TMenuItem;
    PopupOpenCaptureFolder: TMenuItem;
    ScreenshotPopupOpenCaptureFolder: TMenuItem;
    SoundPopupOpenCaptureFolder: TMenuItem;
    VideoPopupOpenCaptureFolder: TMenuItem;
    MenuViewsQuickStarter: TMenuItem;
    N18: TMenuItem;
    ScreenshotPopupOpenExternal: TMenuItem;
    MenuExtrasScanGamesFolder: TMenuItem;
    MenuExtrasCreateShortcuts: TMenuItem;
    XPManifest: TXPManifest;
    MenuFileCreateInstaller: TMenuItem;
    N11: TMenuItem;
    ToolbarPopupMenu: TPopupMenu;
    ToolbarPopupSetupButtons: TMenuItem;
    ToolbarPopupSetupIconSet: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MenuWork(Sender: TObject);
    procedure ListViewAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure ListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ListViewDblClick(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure ApplicationEventsRestore(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure ScreenshotListViewDblClick(Sender: TObject);
    procedure ScreenshotListViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ScreenshotMenuWork(Sender: TObject);
    procedure ScreenshotListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SearchEditChange(Sender: TObject);
    procedure ListViewInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: string);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure ListViewColumnClick(Sender: TObject; Column: TListColumn);
    procedure SoundMenuWork(Sender: TObject);
    procedure SoundListViewDblClick(Sender: TObject);
    procedure SoundListViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SoundListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure TreeViewPopupEditUserFiltersClick(Sender: TObject);
    procedure IdleAddonTimerTimer(Sender: TObject);
    procedure TrayIconPopupClick(Sender: TObject);
    procedure ZipInfoPanelDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure VideoListViewDblClick(Sender: TObject);
    procedure VideoListViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VideoListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure VideoMenuWork(Sender: TObject);
    procedure CapturePageControlChange(Sender: TObject);
    procedure MainDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CaptureDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ToolbarPopupClick(Sender: TObject);
  private
    { Private-Deklarationen }
    hScreenshotsChangeNotification, hConfsChangeNotification : THandle;
    JustStarted : Boolean;
    ListSort : TSortListBy;
    ListSortReverse : Boolean;
    DeleteOnExit : TStringList;
    OldGamesMenuUsed : Boolean;
    StartTrayMinimize : Boolean;
    FileConflictCheckRunning : Boolean;
    SaveBoundsRect : TRect;
    SaveMaximizedState : Boolean;
    ViewFilesFrame : TViewFilesFrame;
    SearchLinkFile, HelpMenuLinkFile : TLinkFile;
    HTMLhelpRouter : THTMLhelpRouter;
    Procedure AfterSetupDialog(ColWidths, UserCols : String);
    Procedure StartCaptureChangeNotify;
    Procedure StopCaptureChangeNotify;
    Procedure LoadMenuLanguage;
    Procedure InitGUI(const FirstInit : Boolean);
    Procedure InitViewStyle;
    Procedure SelectGame(const AGame : TGame);
    Procedure LoadAbandonLinks;
    Procedure LoadHelpLinks;
    Procedure LoadSearchLinks;
    Procedure ProcessParams;
    Procedure UpdateScreenshotList;
    Procedure UpdateOpenFileInDataFolderMenu;
    Procedure AddDirToMenu(const Dir : String; const Menu1, Menu2 : TMenuItem; const Level : Integer);
    Procedure OpenFileInDataFolderMenuWork(Sender : TObject);
    Procedure UpdateAddFromTemplateMenu;
    Procedure AddFromTemplateClick(Sender: TObject);
    Procedure PostShow(var Msg : TMessage); Message WM_USER+1;
    Procedure RunUpdateCheck(const Quite : Boolean);
    Procedure LoadGUISetup(const PrgStart : Boolean);
    Procedure SetupToolbarHints;
    Procedure LoadListViewGUISetup(const ListView : TListView; const Background, FontColor : String; const FontSize : Integer);
    Procedure LoadTreeViewGUISetup(const TreeView : TTreeView; const Background, FontColor : String; const FontSize : Integer);
    Procedure LoadCoolBarGUISetup(const CoolBar : TCoolBar; const Background : String; const FontSize : Integer);
    Procedure ConfFileCheck;
    Procedure WMMove(Var Message : TWMMove); message WM_MOVE;
    Procedure DropImportFile(const FileName: String; var ErrorCode : String);
    Procedure StartWizard(const ExeFile : String; const WindowsExeFile : Boolean);
    Procedure AddProfile(const ExeFile : String; const Mode : String; const TemplateNr : Integer);
    Procedure ZipInfoNotify(Sender : TObject);
    Procedure AddProfileFromQuickStarter(Sender : TObject; const FileName : String; const WindowsProfile, UseWizard : Boolean; const TemplateNr : Integer);
    Procedure QuickStarterCloseNotify(Sender : TObject);
    Procedure DisplayResolutionChange(var Msg : TMessage); message WM_DISPLAYCHANGE;
    Procedure UpdateGamesListByViewFilesFrame(Sender : TObject);
  public
    { Public-Deklarationen }
    GameDB : TGameDB;
  end;

var
  DFendReloadedMainForm: TDFendReloadedMainForm;

implementation

uses ShellAPI, ShlObj, ClipBrd, Math, PNGImage, CommonTools, LanguageSetupUnit,
     PrgConsts, VistaToolsUnit, PrgSetupUnit, SetupDosBoxFormUnit,
     ProfileEditorFormUnit, SetupFormUnit, IconManagerFormUnit, DosBoxUnit,
     HistoryFormUnit, TemplateFormUnit, UninstallFormUnit, ViewImageFormUnit,
     UninstallSelectFormUnit, CreateConfFormUnit, WizardFormUnit,
     CreateShortcutFormUnit, CreateImageUnit, InfoFormUnit, TransferFormUnit,
     BuildInstallerFormUnit, ResHookUnit, BuildInstallerForSingleGameFormUnit,
     ModernProfileEditorFormUnit, ListViewImageUnit, StatisticsFormUnit,
     CacheChooseFormUnit, IconLoaderUnit, LanguageEditorStartFormUnit,
     LanguageEditorFormUnit, PlaySoundFormUnit, WallpaperStyleFormUnit,
     CreateISOImageFormUnit, CreateXMLFormUnit, ExpandImageFormUnit,
     FirstRunWizardFormUnit, CommonComponents, BuildImageFromFolderFormUnit,
     MiniRunFormUnit, ScummVMUnit, ListScummVMGamesFormUnit,
     DragNDropErrorFormUnit, SimpleXMLUnit, OperationModeInfoFormUnit,
     ZipManagerUnit, ZipWaitInfoFormUnit, CopyProfileFormUnit,
     PlayVideoFormUnit, ImageCacheUnit, ZipPackageUnit, WindowsProfileUnit,
     HelpConsts, BuildZipPackagesFormUnit, DOSBoxCountUnit, QuickStartFormUnit,
     ClassExtensions, SetupFrameWaveEncoderUnit, ZipInfoFormUnit,
     ScanGamesFolderFormUnit, MediaInterface, ScummVMToolsUnit,
     CreateShortcutsFormUnit, EditMultipleProfilesFormUnit;

{$R *.dfm}

Var LastDOSBoxCount : Integer=0;
    LastLeft : Integer = -1;
    LastTop : Integer = -1;

procedure TDFendReloadedMainForm.FormCreate(Sender: TObject);
Var S : String;
    B : Boolean;
begin
  {Caption:=Caption+' (RELEASE CANDIDATE 2 OF VERSION 0.7)';}
  {Caption:=Caption+' THIS IS A TEST VERSION ! NOT FOR REGULAR USE ! (Beta 2 of version 0.7.0)';}

  Height:=790;
  Width:=Min(Width,790);
  JustStarted:=True;
  FileConflictCheckRunning:=False;
  StartTrayMinimize:=False;
  HTMLhelpRouter:=nil;

  ListSort:=slbName;
  ListSortReverse:=False;
  OldGamesMenuUsed:=False;

  DeleteOnExit:=TStringList.Create;

  ZipManager.OnInfoBarNotify:=ZipInfoNotify;

  try ForceDirectories(MakeAbsPath(PrgSetup.CaptureDir,PrgSetup.BaseDir)); except end;
  StartCaptureChangeNotify;

  GameDB:=TGameDB.Create(PrgDataDir+GameListSubDir);
  ScummVMGamesList:=TScummVMGamesList.Create;

  HelpMenuLinkFile:=TLinkFile.Create('Links.txt',True,ID_HelpOldGames);
  SearchLinkFile:=TLinkFile.Create('SearchLinks.txt',False,ID_ProfileSearchGame);

  ViewFilesFrame:=TViewFilesFrame.Create(self);
  ViewFilesFrame.Parent:=DataFilesTab;
  ViewFilesFrame.OnUpdateGamesList:=UpdateGamesListByViewFilesFrame;

  LoadMenuLanguage;
  InitGUI(True);
  UpdateAddFromTemplateMenu;

  If PrgSetup.FirstRun then begin
    if SearchDosBox(self,S) then PrgSetup.DOSBoxSettings[0].DosBoxDir:=S;
    ShowFirstRunWizardDialog(self,B);
    If B and (FileExists(PrgDir+'UpdateCheck.exe') or FileExists(PrgDir+BinFolder+'\'+'UpdateCheck.exe')) then RunUpdateCheck(True);
  end;

  if not InitMediaPlayerLibrary(PrgDir+BinFolder) then begin
    MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[PrgDir+BinFolder+'\'+mplayer]),mtError,[mbOK],0);
    halt;
  end;

  If PrgSetup.ActivateIncompleteFeatures then ToolBar.PopupMenu:=ToolbarPopupMenu;
end;

procedure TDFendReloadedMainForm.FormShow(Sender: TObject);
Var G : TGame;
    S : String;
begin
  If not JustStarted then exit;
  JustStarted:=False;

  ListView:=TListView(NewWinControlType(ListView,TListViewAcceptingFilesAndSpecialHint,ctcmDangerousMagic));
  TListViewAcceptingFilesAndSpecialHint(ListView).ActivateAcceptFiles;
  TreeView:=TTreeView(NewWinControlType(TreeView,TTreeViewAcceptingFiles,ctcmDangerousMagic));
  TTreeViewAcceptingFiles(TreeView).ActivateAcceptFiles;
  ScreenshotListView:=TListView(NewWinControlType(ScreenshotListView,TListViewAcceptingFiles,ctcmDangerousMagic));
  TListViewAcceptingFiles(ScreenshotListView).ActivateAcceptFiles;
  SoundListView:=TListView(NewWinControlType(SoundListView,TListViewAcceptingFiles,ctcmDangerousMagic));
  TListViewAcceptingFiles(SoundListView).ActivateAcceptFiles;
  VideoListView:=TListView(NewWinControlType(VideoListView,TListViewAcceptingFiles,ctcmDangerousMagic));
  TListViewAcceptingFiles(VideoListView).ActivateAcceptFiles;

  TreeView.OnChange:=nil;

  S:=PrgSetup.DOSBoxSettings[0].DosBoxDir;
  if SearchDosBox(self,S) then PrgSetup.DOSBoxSettings[0].DosBoxDir:=S;
  LoadHelpLinks;
  LoadAbandonLinks;
  LoadSearchLinks;

  UserIconLoader.RegisterImageList(ImageList,'Main');

  If PrgSetup.FirstRun then begin
    BuildDefaultProfile;
    G:=BuildDefaultDosProfile(GameDB);
    ReBuildTemplates;
    FastSearchAllTools;
    LoadLanguage(PrgSetup.Language);
    LoadMenuLanguage;
    LoadGUISetup(False);
    SelectGame(G);
    PrgSetup.DFendVersion:=GetNormalFileVersionAsString;
  end else begin
    If PrgSetup.DFendVersion<>GetNormalFileVersionAsString then begin
      PrgSetup.DFendVersion:=GetNormalFileVersionAsString;
      UpdateUserDataFolderAfterUpgrade;
      FastSearchAllTools;
      LoadGUISetup(False);
    end else begin
      LoadGUISetup(True);
    end;
  end;

  Case PrgSetup.CheckForUpdates of
    0 : {Do not check automatically};
    1 : If Round(Date)>=PrgSetup.LastUpdateCheck+7 then RunUpdateCheck(True);
    2 : If Round(Date)>=PrgSetup.LastUpdateCheck+1 then RunUpdateCheck(True);
    3 : RunUpdateCheck(True);
  end;

  ViewFilesFrame.Init;

  TempZipFilesStartCleanUp;

  PostMessage(Handle,WM_USER+1,0,0);
end;

procedure TDFendReloadedMainForm.FormDestroy(Sender: TObject);
Var I : Integer;
    S1, S2 : String;
begin
  try
    try
      For I:=0 to DeleteOnExit.Count-1 do If FileExists(DeleteOnExit[I]) then ExtDeleteFile(DeleteOnExit[I],ftTemp);
    finally
      DeleteOnExit.Free;
    end;
  except end;

  GamesListSaveColWidths(ListView);
  StopCaptureChangeNotify;
  PrgSetup.MainMaximized:=(WindowState=wsMaximized);
  PrgSetup.MainLeft:=Left;
  PrgSetup.MainTop:=Top;
  PrgSetup.MainWidth:=Width;
  PrgSetup.MainHeight:=Height;
  PrgSetup.TreeWidth:=TreeView.Width;
  PrgSetup.ScreenshotHeight:=CapturePageControl.Height;

  If TreeView.Selected=nil then begin S1:=''; S2:=''; end else begin
    If TreeView.Selected.Parent=nil then begin
      S1:=TreeView.Selected.Text; S2:='';
    end else begin
      S1:=TreeView.Selected.Parent.Text; S2:=TreeView.Selected.Text;
    end;
  end;
  PrgSetup.FilterMain:=S1;
  PrgSetup.FilterSub:=S2;

  GameDB.Free;
  ScummVMGamesList.Free;

  HelpMenuLinkFile.Free;
  SearchLinkFile.Free;

  HTMLhelpRouter.Free;
end;

procedure TDFendReloadedMainForm.LoadMenuLanguage;
Var HelpFileName : String;
    B : Boolean;
begin
  Font.Charset:=CharsetNameToFontCharSet(LanguageSetup.CharsetName);
  ListView.Font.Charset:=CharsetNameToFontCharSet(LanguageSetup.CharsetName);

  MenuFile.Caption:=LanguageSetup.MenuFile;
  MenuFileImport.Caption:=LanguageSetup.MenuFileImport;
  MenuFileImportConfFile.Caption:=LanguageSetup.MenuFileImportConf;
  MenuFileImportProfFile.Caption:=LanguageSetup.MenuFileImportProf;
  MenuFileImportZIPFile.Caption:=LanguageSetup.MenuFileImportZIP;
  MenuFileExport.Caption:=LanguageSetup.MenuFileExport;
  MenuFileExportGamesList.Caption:=LanguageSetup.MenuFileExportGamesList;
  MenuFileCreateConf.Caption:=LanguageSetup.MenuFileCreateConf;
  MenuFileCreateProf.Caption:=LanguageSetup.MenuFileCreateProf;
  MenuFileCreateZIP.Caption:=LanguageSetup.MenuFileCreateZIP;
  MenuFileCreateInstaller.Caption:=LanguageSetup.MenuFileCreateInstaller;
  MenuFileSetup.Caption:=LanguageSetup.MenuFileSetup;
  MenuFileQuit.Caption:=LanguageSetup.MenuFileQuit;
  MenuView.Caption:=LanguageSetup.MenuView;
  MenuViewsShowTree.Caption:=LanguageSetup.MenuViewShowTree;
  MenuViewsShowScreenshots.Caption:=LanguageSetup.MenuViewShowScreenshots;
  MenuViewsShowSearchBox.Caption:=LanguageSetup.MenuViewShowSearchBox;
  MenuViewsShowExtraInfo.Caption:=LanguageSetup.MenuViewShowExtraInfo;
  MenuViewsShowTooltips.Caption:=LanguageSetup.MenuViewShowTooltips;
  MenuViewsSimpleListNoIcons.Caption:=LanguageSetup.MenuViewListNoIcons;
  MenuViewsSimpleList.Caption:=LanguageSetup.MenuViewList;
  MenuViewsListNoIcons.Caption:=LanguageSetup.MenuViewReportNoIcons;
  MenuViewsList.Caption:=LanguageSetup.MenuViewReport;
  MenuViewsSmallIcons.Caption:=LanguageSetup.MenuViewSmallIcons;
  MenuViewsIcons.Caption:=LanguageSetup.MenuViewIcons;
  MenuViewsScreenshots.Caption:=LanguageSetup.MenuViewScreenshots;
  MenuViewsQuickStarter.Caption:=LanguageSetup.MenuViewQuickStarter;
  MenuRun.Caption:=LanguageSetup.MenuRun;
  MenuRunGame.Caption:=LanguageSetup.MenuRunGame;
  MenuRunSetup.Caption:=LanguageSetup.MenuRunSetup;
  MenuRunExtraFile.Caption:=LanguageSetup.MenuRunExtraFile;
  MenuRunRunDosBox.Caption:=LanguageSetup.MenuRunRunDosBox;
  MenuRunRunDosBoxKeyMapper.Caption:=LanguageSetup.MenuRunRunDosBoxKeyMapper;
  MenuRunOpenDosBoxConfig.Caption:=LanguageSetup.MenuRunOpenDosBoxConfig;
  MenuRunRunScummVM.Caption:=LanguageSetup.MenuRunRunScummVM;
  MenuRunOpenScummVMConfig.Caption:=LanguageSetup.MenuRunOpenScummVMConfig;
  MenuProfile.Caption:=LanguageSetup.MenuProfile;
  MenuProfileAdd.Caption:=LanguageSetup.MenuProfileAdd;
  MenuProfileAddScummVM.Caption:=LanguageSetup.MenuProfileAddScummVM;
  MenuProfileAddWindows.Caption:=LanguageSetup.MenuProfileAddWindows;
  MenuProfileAddFromTemplate.Caption:=LanguageSetup.MenuProfileAddFromTemplate;
  MenuProfileAddWithWizard.Caption:=LanguageSetup.MenuProfileAddWithWizard;
  MenuProfileEdit.Caption:=LanguageSetup.MenuProfileEdit;
  MenuProfileCopy.Caption:=LanguageSetup.MenuProfileCopy;
  MenuProfileDelete.Caption:=LanguageSetup.MenuProfileDelete;
  MenuProfileDeinstall.Caption:=LanguageSetup.MenuProfileDeinstall;
  MenuProfileMakeInstaller.Caption:=LanguageSetup.MenuProfileMakeInstaller;
  MenuProfileMakeZipArchive.Caption:=LanguageSetup.MenuProfileMakeZipArchive;
  MenuProfileViewConfFile.Caption:=LanguageSetup.MenuProfileViewConfFile;
  MenuProfileViewIniFile.Caption:=LanguageSetup.MenuProfileViewIniFile;
  MenuProfileOpenFolder.Caption:=LanguageSetup.MenuProfileOpenFolder;
  MenuProfileOpenCaptureFolder.Caption:=LanguageSetup.MenuProfileOpenCaptureFolder;
  MenuProfileOpenDataFolder.Caption:=LanguageSetup.MenuProfileOpenDataFolder;
  MenuProfileOpenFileInDataFolder.Caption:=LanguageSetup.MenuProfileOpenFileInDataFolder;
  MenuProfileWWW.Caption:=LanguageSetup.GameWWW;
  MenuProfileMarkAsFavorite.Caption:=LanguageSetup.MenuProfileMarkAsFavorite;
  MenuProfileCreateShortcut.Caption:=LanguageSetup.MenuProfileCreateShortcut;
  MenuProfileSearchGame.Caption:=LanguageSetup.MenuProfileSearchGame;
  MenuExtras.Caption:=LanguageSetup.MenuExtras;
  MenuExtrasIconManager.Caption:=LanguageSetup.MenuExtrasIconManager;
  MenuExtrasViewLogs.Caption:=LanguageSetup.MenuExtrasViewLogs;
  MenuExtrasOpenGamesFolder.Caption:=LanguageSetup.MenuExtrasViewLogsOpenGamesFolder;
  MenuExtrasTemplates.Caption:=LanguageSetup.MenuExtrasTemplates;
  MenuExtrasDeinstallMultipleGames.Caption:=LanguageSetup.MenuExtrasDeinstallMultipleGames;
  MenuExtrasImageFiles.Caption:=LanguageSetup.MenuExtrasImageFiles;
  MenuExtrasCreateIMGImage.Caption:=LanguageSetup.MenuExtrasCreateIMGImageFile;
  MenuExtrasWriteIMGImage.Caption:=LanguageSetup.MenuExtrasWriteIMGImageFile;
  MenuExtrasCreateImage.Caption:=LanguageSetup.MenuExtrasCreateImageFile;
  MenuExtrasCreateISOImage.Caption:=LanguageSetup.MenuExtrasCreateISOImageFile;
  MenuExtrasExtractImage.Caption:=LanguageSetup.MenuExtrasExtractImage;
  MenuExtrasImageFromFolder.Caption:=LanguageSetup.MenuExtrasImageFromFolder;
  MenuExtrasScanGamesFolder.Caption:=LanguageSetup.MenuExtrasScanGamesFolder;
  MenuExtrasTransferProfiles.Caption:=LanguageSetup.MenuExtrasTransferProfiles;
  MenuExtrasBuildInstaller.Caption:=LanguageSetup.MenuExtrasBuildInstaller;
  MenuExtrasBuildZipPackages.Caption:=LanguageSetup.MenuExtrasBuildZipPackages;
  MenuExtrasChangeProfiles.Caption:=LanguageSetup.MenuExtrasChangeProfiles;
  MenuExtrasCreateShortcuts.Caption:=LanguageSetup.MenuExtrasCreateShortcuts;
  MenuExtrasCreateShortcuts.Visible:=PrgSetup.ActivateIncompleteFeatures;
  MenuExtrasCheckProfiles.Caption:=LanguageSetup.MenuExtrasCheckProfiles;
  MenuHelp.Caption:=LanguageSetup.MenuHelp;
  MenuHelpDosBox.Caption:=LanguageSetup.MenuHelpDosBox;
  MenuHelpDosBoxReadme.Caption:=LanguageSetup.MenuHelpDosBoxReadme;
  MenuHelpDosBoxFAQ.Caption:=LanguageSetup.MenuHelpDosBoxFAQ;
  MenuHelpDosBoxIntro.Caption:=LanguageSetup.MenuHelpDosBoxIntro;
  MenuHelpDosBoxIntroDosBox.Caption:=LanguageSetup.MenuHelpDosBoxIntroDosBox;
  MenuHelpDosBoxHotkeys.Caption:=LanguageSetup.MenuHelpDosBoxHotkeys;
  MenuHelpDosBoxHotkeysDosbox.Caption:=LanguageSetup.MenuHelpDosBoxHotkeysDosbox;
  MenuHelpDosBoxHomepage.Caption:=LanguageSetup.MenuHelpDosBoxHomepage;
  MenuHelpDosBoxCompatibility.Caption:=LanguageSetup.MenuHelpDosBoxCompatibility;
  MenuHelpDemoCompatibility.Caption:=LanguageSetup.MenuHelpDemoCompatibility;
  MenuHelpScummVM.Caption:=LanguageSetup.MenuHelpScummVM;
  MenuHelpScummVMReadme.Caption:=LanguageSetup.MenuHelpScummVMReadme;
  MenuHelpScummVMFAQ.Caption:=LanguageSetup.MenuHelpScummVMFAQ;
  MenuHelpScummVMHomepage.Caption:=LanguageSetup.MenuHelpScummVMHomepage;
  MenuHelpScummVMCompatibility.Caption:=LanguageSetup.MenuHelpScummVMCompatibility;
  MenuHelpScummVMCompatibilityIntern.Caption:=LanguageSetup.MenuHelpScummVMCompatibilityList;
  MenuHelpAbandonware.Caption:=LanguageSetup.MenuHelpAbandonware;
  MenuHelpHomepage.Caption:=LanguageSetup.MenuHelpHomepage;
  MenuHelpForum.Caption:=LanguageSetup.MenuHelpForum;
  MenuHelpUpdates.Caption:=LanguageSetup.MenuHelpUpdates;
  MenuHelpFAQs.Caption:=LanguageSetup.MenuHelpFAQs;
  MenuHelpMakeDFRBetter.Caption:=LanguageSetup.MenuHelpMakeDFRBetter;
  MenuHelpMakeBetterIcons.Caption:=LanguageSetup.MenuHelpMakeBetterIcons;
  MenuHelpMakeTranslation.Caption:=LanguageSetup.MenuHelpMakeTranslation;
  MenuHelpCreateAutoSetupTemplates.Caption:=LanguageSetup.MenuHelpMakeAutoSetupTemplates;
  MenuHelpStatistics.Caption:=LanguageSetup.MenuHelpStatistics;
  MenuHelpOperationMode.Caption:=LanguageSetup.MenuHelpOperationMode;
  MenuHelpHelp.Caption:=LanguageSetup.MenuHelpHelp;
  MenuHelpHelpContent.Caption:=LanguageSetup.MenuHelpContent;
  MenuHelpIntroduction.Caption:=LanguageSetup.MenuHelpIntroduction;
  MenuHelpAddingGames.Caption:=LanguageSetup.MenuHelpAddingGames;
  MenuHelpAbout.Caption:=LanguageSetup.MenuHelpAbout;

  AddButtonMenuAdd.Caption:=LanguageSetup.MenuProfileAdd;
  AddButtonMenuAddScummVM.Caption:=LanguageSetup.MenuProfileAddScummVM;
  AddButtonMenuAddWindows.Caption:=LanguageSetup.MenuProfileAddWindows;
  AddButtonMenuAddFromTemplate.Caption:=LanguageSetup.MenuProfileAddFromTemplate;
  AddButtonMenuAddWithWizard.Caption:=LanguageSetup.MenuProfileAddWithWizard;

  SetupToolbarHints;

  PopupRunGame.Caption:=LanguageSetup.PopupRunGame;
  PopupRunSetup.Caption:=LanguageSetup.PopupRunSetup;
  PopupRunExtraFile.Caption:=LanguageSetup.PopupRunExtraFile;
  PopupEdit.Caption:=LanguageSetup.PopupEdit;
  PopupCopy.Caption:=LanguageSetup.PopupCopy;
  PopupDelete.Caption:=LanguageSetup.PopupDelete;
  PopupDeinstall.Caption:=LanguageSetup.PopupDeinstall;
  PopupMakeInstaller.Caption:=LanguageSetup.PopupMakeInstaller;
  PopupMakeZipArchive.Caption:=LanguageSetup.PopupMakeZipArchive;
  PopupViewConfFile.Caption:=LanguageSetup.MenuProfileViewConfFile;
  PopupViewINIFile.Caption:=LanguageSetup.MenuProfileViewIniFile;
  PopupOpenFolder.Caption:=LanguageSetup.PopupOpenFolder;
  PopupOpenCaptureFolder.Caption:=LanguageSetup.PopupOpenCaptureFolder;
  PopupOpenDataFolder.Caption:=LanguageSetup.PopupOpenDataFolder;
  PopupOpenFileInDataFolder.Caption:=LanguageSetup.PopupOpenFileInDataFolder;
  PopupWWW.Caption:=LanguageSetup.GameWWW;
  PopupMarkAsFavorite.Caption:=LanguageSetup.PopupMarkAsFavorite;
  PopupCreateShortcut.Caption:=LanguageSetup.PopupCreateShortcut;
  PopupSearchGame.Caption:=LanguageSetup.PopupSearchGame;
  PopupViews.Caption:=LanguageSetup.PopupView;
  PopupSimpleListNoIcons.Caption:=LanguageSetup.MenuViewListNoIcons;
  PopupSimpleList.Caption:=LanguageSetup.MenuViewList;
  PopupListNoIcons.Caption:=LanguageSetup.MenuViewReportNoIcons;
  PopupList.Caption:=LanguageSetup.MenuViewReport;
  PopupSmallIcons.Caption:=LanguageSetup.MenuViewSmallIcons;
  PopupIcons.Caption:=LanguageSetup.MenuViewIcons;
  PopupScreenshots.Caption:=LanguageSetup.MenuViewScreenshots;

  CaptureScreenshotsTab.Caption:=LanguageSetup.CaptureScreenshots;
  If ListView.Selected<>nil then begin
    If ScummVMMode(TGame(ListView.Selected.Data)) then begin
      ScreenshotsInfoPanel.Caption:=LanguageSetup.CaptureScreenshotsInfoScumm;
    end else begin
      If WindowsExeMode(TGame(ListView.Selected.Data))
        then ScreenshotsInfoPanel.Caption:=''
        else ScreenshotsInfoPanel.Caption:=LanguageSetup.CaptureScreenshotsInfo;
    end;
  end;
  CaptureSoundTab.Caption:=LanguageSetup.CaptureSounds;
  CaptureVideoTab.Caption:=LanguageSetup.CaptureVideos;
  SoundInfoPanel.Caption:=LanguageSetup.CaptureSoundsInfo;
  VideoInfoPanel.Caption:=LanguageSetup.CaptureVideosInfo;
  DataFilesTab.Caption:=LanguageSetup.CaptureDataFiles;

  ScreenshotPopupOpen.Caption:=LanguageSetup.ScreenshotPopupOpen;
  ScreenshotPopupOpenExternal.Caption:=LanguageSetup.ScreenshotPopupOpenExternal;
  ScreenshotPopupOpenCaptureFolder.Caption:=LanguageSetup.PopupOpenCaptureFolder;
  ScreenshotPopupRefresh.Caption:=LanguageSetup.ScreenshotPopupRefresh;
  ScreenshotPopupImport.Caption:=LanguageSetup.ScreenshotPopupImport;
  ScreenshotPopupCopy.Caption:=LanguageSetup.ScreenshotPopupCopy;
  ScreenshotPopupSave.Caption:=LanguageSetup.ScreenshotPopupSave;
  ScreenshotPopupRename.Caption:=LanguageSetup.ScreenshotPopupRename;
  ScreenshotPopupDelete.Caption:=LanguageSetup.ScreenshotPopupDelete;
  ScreenshotPopupDeleteAll.Caption:=LanguageSetup.ScreenshotPopupDeleteAll;
  ScreenshotPopupUseAsBackground.Caption:=LanguageSetup.ScreenshotPopupUseAsBackground;
  ScreenshotPopupUseInScreenshotList.Caption:=LanguageSetup.ScreenshotPopupUseInScreenshotList;

  SoundPopupOpen.Caption:=LanguageSetup.ScreenshotPopupOpen;
  SoundPopupOpenExternal.Caption:=LanguageSetup.SoundsPopupOpenExternal;
  SoundPopupOpenCaptureFolder.Caption:=LanguageSetup.PopupOpenCaptureFolder;
  SoundPopupRefresh.Caption:=LanguageSetup.ScreenshotPopupRefresh;
  SoundPopupImport.Caption:=LanguageSetup.ScreenshotPopupImport;
  SoundPopupSave.Caption:=LanguageSetup.ScreenshotPopupSave;
  SoundPopupSaveMp3.Caption:=LanguageSetup.SoundsPopupSaveMp3;
  SoundPopupSaveOgg.Caption:=LanguageSetup.SoundsPopupSaveOgg;
  SoundPopupRename.Caption:=LanguageSetup.ScreenshotPopupRename;
  SoundPopupDelete.Caption:=LanguageSetup.ScreenshotPopupDelete;
  SoundPopupDeleteAll.Caption:=LanguageSetup.ScreenshotPopupDeleteAll;
  SoundPopupSaveMp3All.Caption:=LanguageSetup.SoundsPopupSaveMp3All;
  SoundPopupSaveOggAll.Caption:=LanguageSetup.SoundsPopupSaveOggAll;

  VideoPopupOpen.Caption:=LanguageSetup.ScreenshotPopupOpen;
  VideoPopupOpenExternal.Caption:=LanguageSetup.SoundsPopupOpenExternal;
  VideoPopupOpenCaptureFolder.Caption:=LanguageSetup.PopupOpenCaptureFolder;
  VideoPopupRefresh.Caption:=LanguageSetup.ScreenshotPopupRefresh;
  VideoPopupImport.Caption:=LanguageSetup.ScreenshotPopupImport;
  VideoPopupSave.Caption:=LanguageSetup.ScreenshotPopupSave;
  VideoPopupRename.Caption:=LanguageSetup.ScreenshotPopupRename;
  VideoPopupDelete.Caption:=LanguageSetup.ScreenshotPopupDelete;
  VideoPopupDeleteAll.Caption:=LanguageSetup.ScreenshotPopupDeleteAll;

  TrayIconPopupRestore.Caption:=LanguageSetup.TrayPopupRestore;
  TrayIconPopupRun.Caption:=LanguageSetup.TrayPopupRun;
  TrayIconPopupAddProfile.Caption:=LanguageSetup.TrayPopupAdd;
  TrayIconPopupAddScummVMProfile.Caption:=LanguageSetup.MenuProfileAddScummVM;
  TrayIconPopupAddWindowsProfile.Caption:=LanguageSetup.MenuProfileAddWindows;
  TrayIconPopupAddFromTemplate.Caption:=LanguageSetup.TrayPopupAddFromTemplate;
  TrayIconPopupAddWithWizard.Caption:=LanguageSetup.TrayPopupAddWithWizard;
  TrayIconPopupClose.Caption:=LanguageSetup.TrayPopupClose;

  TreeViewPopupEditUserFilters.Caption:=LanguageSetup.TreeViewPopupUserDefinedCategories;
  ToolbarPopupSetupButtons.Caption:=LanguageSetup.ToolbarPopupSetupButtons;
  ToolbarPopupSetupIconSet.Caption:=LanguageSetup.ToolbarPopupSetupIconSet;

  ScreenshotImageList.Height:=Max(20,Min(500,PrgSetup.ScreenshotPreviewSize));
  ScreenshotImageList.Width:=ScreenshotImageList.Height*16 div 10;

  MenuKeyCaps[mkcBkSp]:=LanguageSetup.KeyBackspace;
  MenuKeyCaps[mkcTab]:=LanguageSetup.KeyTab;
  MenuKeyCaps[mkcEsc]:=LanguageSetup.KeyEscape;
  MenuKeyCaps[mkcEnter]:=LanguageSetup.KeyEnter;
  MenuKeyCaps[mkcSpace]:=LanguageSetup.KeySpace;
  MenuKeyCaps[mkcPgUp]:=LanguageSetup.KeyPageUp;
  MenuKeyCaps[mkcPgDn]:=LanguageSetup.KeyPageDown;
  MenuKeyCaps[mkcEnd]:=LanguageSetup.KeyEnd;
  MenuKeyCaps[mkcHome]:=LanguageSetup.KeyHome;
  MenuKeyCaps[mkcLeft]:=LanguageSetup.KeyLeft;
  MenuKeyCaps[mkcUp]:=LanguageSetup.KeyUp;
  MenuKeyCaps[mkcRight]:=LanguageSetup.KeyRight;
  MenuKeyCaps[mkcDown]:=LanguageSetup.KeyDown;
  MenuKeyCaps[mkcIns]:=LanguageSetup.KeyInsert;
  MenuKeyCaps[mkcDel]:=LanguageSetup.KeyDelete;
  MenuKeyCaps[mkcShift]:=LanguageSetup.KeyShift;
  MenuKeyCaps[mkcCtrl]:=LanguageSetup.KeyCtrl;
  MenuKeyCaps[mkcAlt]:=LanguageSetup.KeyAlt;

  MsgDlgWarning:=LanguageSetup.MsgDlgWarning;
  MsgDlgError:=LanguageSetup.MsgDlgError;
  MsgDlgInformation:=LanguageSetup.MsgDlgInformation;
  MsgDlgConfirm:=LanguageSetup.MsgDlgConfirm;
  MsgDlgYes:=LanguageSetup.MsgDlgYes;
  MsgDlgNo:=LanguageSetup.MsgDlgNo;
  MsgDlgOK:=LanguageSetup.MsgDlgOK;
  MsgDlgCancel:=LanguageSetup.MsgDlgCancel;
  MsgDlgAbort:=LanguageSetup.MsgDlgAbort;
  MsgDlgRetry:=LanguageSetup.MsgDlgRetry;
  MsgDlgIgnore:=LanguageSetup.MsgDlgIgnore;
  MsgDlgAll:=LanguageSetup.MsgDlgAll;
  MsgDlgNoToAll:=LanguageSetup.MsgDlgNoToAll;
  MsgDlgYesToAll:=LanguageSetup.MsgDlgYesToAll;

  ZipInfoLabel.Caption:=LanguageSetup.ZipFormWaitInfo;

  ViewFilesFrame.LoadLanguage;

  HelpFileName:=PrgDataDir+LanguageSubDir+'\'+LanguageSetup.HelpFile; If FileExists(HelpFileName) then B:=True;
  If not B then begin HelpFileName:=PrgDir+LanguageSubDir+'\'+LanguageSetup.HelpFile; If FileExists(HelpFileName) then B:=True; end;
  If not B then begin HelpFileName:=PrgDataDir+LanguageSubDir+'\English.chm'; If FileExists(HelpFileName) then B:=True; end;
  If not B then begin HelpFileName:=PrgDir+LanguageSubDir+'\English.chm'; If FileExists(HelpFileName) then B:=True; end;

  If B then begin
    If HTMLhelpRouter=nil then HTMLhelpRouter:=InitHTMLHelp(HelpFileName) else HTMLhelpRouter.Helpfile:=HelpFileName;
  end;

  SearchEdit.OnChange:=nil;
  SearchEdit.Text:=LanguageSetup.Search;
  SearchEdit.Font.Color:=clGray;
  SearchEdit.OnChange:=SearchEditChange;

  LoadAbandonLinks;
  LoadSearchLinks;

  If Assigned(QuickStartForm) then QuickStartForm.LoadLanguage;
end;

procedure TDFendReloadedMainForm.InitGUI(const FirstInit : Boolean);
Var I,J : Integer;
    TN : TTreeNode;
    S : String;
begin
  DoubleBuffered:=True;
  SearchEdit.DoubleBuffered:=True;
  SetVistaFonts(self);
  {ListView.DoubleBuffered:=True; - causes problems with tooltips}
  CapturePageControl.DoubleBuffered:=True;
  ScreenshotListView.DoubleBuffered:=True;
  SoundListView.DoubleBuffered:=True;
  VideoListView.DoubleBuffered:=True;
  TreeView.DoubleBuffered:=True;

  MenuRunGame.ShortCut:=ShortCut(VK_Return,[]);
  MenuRunSetup.ShortCut:=ShortCut(VK_Return,[ssShift]);
  MenuProfileEdit.ShortCut:=ShortCut(VK_Return,[ssCtrl]);
  PopupRunGame.ShortCut:=ShortCut(VK_Return,[]);
  PopupRunSetup.ShortCut:=ShortCut(VK_Return,[ssShift]);
  PopupEdit.ShortCut:=ShortCut(VK_Return,[ssCtrl]);
  ScreenshotPopupOpen.ShortCut:=ShortCut(VK_Return,[]);
  SoundPopupOpen.ShortCut:=ShortCut(VK_Return,[]);
  SoundPopupOpenExternal.ShortCut:=ShortCut(VK_Return,[ssShift]);
  VideoPopupOpen.ShortCut:=ShortCut(VK_Return,[]);
  VideoPopupOpenExternal.ShortCut:=ShortCut(VK_Return,[ssShift]);

  If not FirstInit then S:=GamesListSaveColWidthsToString(ListView) else S:='';
  InitListViewForGamesList(ListView,PrgSetup.ShowExtraInfo);
  InitTreeViewForGamesList(TreeView,GameDB);
  If FirstInit then begin
    If PrgSetup.StoreColumnWidths then GamesListLoadColWidths(ListView)
  end else begin
    GamesListLoadColWidthsFromString(ListView,S);
  end;

  If PrgSetup.RestoreFilter and (Trim(PrgSetup.FilterMain)<>'') then begin
    TN:=nil;
    For I:=0 to TreeView.Items.Count-1 do If ExtUpperCase(TreeView.Items[I].Text)=ExtUpperCase(Trim(PrgSetup.FilterMain)) then begin
      TN:=TreeView.Items[I];
      If Trim(PrgSetup.FilterMain)<>'' then For J:=0 to TN.Count-1 do If ExtUpperCase(TN.Item[J].Text)=ExtUpperCase(Trim(PrgSetup.FilterSub)) then begin
        TN:=TN.Item[J]; break;
      end;
      break;
    end;
    If TN<>nil then TreeView.Selected:=TN;
  end;

  Case PrgSetup.StartWindowSize of
    0 : begin
          {nothing};
        end;
    1 : begin
          If PrgSetup.MainMaximized then begin
            {Maximize in OnShow};
          end else begin
            If (PrgSetup.MainLeft>=0) and (PrgSetup.MainLeft<9*Screen.Width div 10) then Left:=PrgSetup.MainLeft;
            If (PrgSetup.MainTop>=0) and (PrgSetup.MainTop<9*Screen.Height div 10) then Top:=PrgSetup.MainTop;
            If (PrgSetup.MainWidth>=0) and (Left+PrgSetup.MainWidth<=Screen.Width) then Width:=PrgSetup.MainWidth;
            If (PrgSetup.MainHeight>=0) and (Top+PrgSetup.MainHeight<=Screen.Height) then Height:=PrgSetup.MainHeight;
            Menu:=nil;
            Position:=poDesigned;
            Menu:=MainMenu;
          end;
          If (PrgSetup.TreeWidth>=0) and (PrgSetup.TreeWidth<9*ClientWidth div 10) then TreeView.Width:=PrgSetup.TreeWidth;
          If (PrgSetup.ScreenshotHeight>=0) and (PrgSetup.ScreenshotHeight<9*ClientHeight div 10) then CapturePageControl.Height:=PrgSetup.ScreenshotHeight;
        end;
    2 : {Minimize in OnShow};
    3 : {Maximize in OnShow};
  end;

  CapturePageControl.Visible:=PrgSetup.ShowScreenshots;
  MenuViewsShowScreenshots.Checked:=PrgSetup.ShowScreenshots;

  TreeView.Visible:=PrgSetup.ShowTree;
  MenuViewsShowTree.Checked:=PrgSetup.ShowTree;

  ButtonClose.Visible:=PrgSetup.ShowToolbarButtonClose;
  ButtonRun.Visible:=PrgSetup.ShowToolbarButtonRun;
  ButtonRunSetup.Visible:=PrgSetup.ShowToolbarButtonRunSetup;
  ButtonAdd.Visible:=PrgSetup.ShowToolbarButtonAdd;
  ButtonEdit.Visible:=PrgSetup.ShowToolbarButtonEdit;
  ButtonDelete.Visible:=PrgSetup.ShowToolbarButtonDelete;

  SearchEdit.Visible:=PrgSetup.ShowSearchBox;
  MenuViewsShowSearchBox.Checked:=PrgSetup.ShowSearchBox;

  MenuViewsShowExtraInfo.Checked:=PrgSetup.ShowExtraInfo;
  InitViewStyle;

  ListView.ShowHint:=PrgSetup.ShowTooltips;
  MenuViewsShowTooltips.Checked:=PrgSetup.ShowTooltips;

  SearchEdit.OnChange:=nil;
  SearchEdit.Text:=LanguageSetup.Search;
  SearchEdit.Font.Color:=clGray;
  SearchEdit.OnChange:=SearchEditChange;

  MenuFileImportXMLFile.Visible:=PrgSetup.ShowXMLImportMenuItem;
  MenuFileCreateXML.Visible:=PrgSetup.ShowXMLExportMenuItem;
end;

procedure TDFendReloadedMainForm.InitViewStyle;
Var S : String;
    I : Integer;
    VS : TViewStyle;
begin
  S:=Trim(ExtUpperCase(PrgSetup.ListViewStyle));
  I:=3;
  If S='SIMPLELISTNOICONS' then I:=0;
  If S='SIMPLELIST' then I:=1;
  If S='LISTNOICONS' then I:=2;
  If S='LIST' then I:=3;
  If S='SMALLICONS' then I:=4;
  If S='ICONS' then I:=5;
  If S='SCREENSHOTS' then I:=6;

  Case I of
    0 : begin
          MenuViewsSimpleListNoIcons.Checked:=True;
          PopupSimpleListNoIcons.Checked:=True;
          If (ListView.SmallImages<>nil) and (ListView.ViewStyle=vsList) then ListView.ViewStyle:=vsReport;
          ListView.LargeImages:=ListviewIconImageList;
          ListView.SmallImages:=nil;
          ListView.ViewStyle:=vsList;
        end;
    1 : begin
          MenuViewsSimpleList.Checked:=True;
          PopupSimpleList.Checked:=True;
          ListView.LargeImages:=ListviewIconImageList;
          ListView.SmallImages:=ListviewImageList;
          ListView.ViewStyle:=vsList;
        end;
    2 : begin
          MenuViewsListNoIcons.Checked:=True;
          PopupListNoIcons.Checked:=True;
          ListView.LargeImages:=ListviewIconImageList;
          If (ListView.SmallImages<>nil) and (ListView.ViewStyle=vsReport) then ListView.ViewStyle:=vsList;
          ListView.SmallImages:=nil;
          ListView.ViewStyle:=vsReport;
        end;
    3 : begin
          MenuViewsList.Checked:=True;
          PopupList.Checked:=True;
          ListView.LargeImages:=ListviewIconImageList;
          ListView.SmallImages:=ListviewImageList;
          ListView.ViewStyle:=vsReport;
        end;
    4 : begin
          MenuViewsSmallIcons.Checked:=True;
          PopupSmallIcons.Checked:=True;
          ListView.LargeImages:=ListviewIconImageList;
          ListView.SmallImages:=ListviewImageList;
          ListView.ViewStyle:=vsSmallIcon;
        end;
    5 : begin
          MenuViewsIcons.Checked:=True;
          PopupIcons.Checked:=True;
          ListView.LargeImages:=ListviewIconImageList;
          ListView.SmallImages:=ListviewImageList;
          ListView.ViewStyle:=vsIcon;
        end;
    6 : begin
          MenuViewsScreenshots.Checked:=True;
          PopupScreenshots.Checked:=True;
          ListView.LargeImages:=ListviewScreenshotImageList;
          ListView.SmallImages:=nil;
          ListView.ViewStyle:=vsIcon;
        end;
  end;

  TreeViewChange(TreeView,TreeView.Selected);
  VS:=ListView.ViewStyle;
  If ListView.ViewStyle=vsReport then ListView.ViewStyle:=vsSmallIcon else ListView.ViewStyle:=vsReport;
  ListView.ViewStyle:=VS;
end;

Procedure TDFendReloadedMainForm.LoadAbandonLinks;
begin
  HelpMenuLinkFile.AddLinksToMenu(MenuHelpAbandonware,6102,6103,MenuWork,4);
end;

procedure TDFendReloadedMainForm.LoadHelpLinks;
Var I : Integer;
    M : TMenuItem;
    Rec : TSearchRec;
begin
  I:=FindFirst(PrgSetup.DOSBoxSettings[0].DosBoxDir+'Readme*.txt',faAnyFile,Rec);
  try
    while I=0 do begin
      M:=TMenuItem.Create(self);
      M.Caption:=Trim(Rec.Name);
      M.Tag:=6101;
      M.OnClick:=MenuWork;
      M.ImageIndex:=24;
      MenuHelpDosBoxReadme.Add(M);
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;
end;

Procedure TDFendReloadedMainForm.LoadSearchLinks;
begin
  SearchLinkFile.AddLinksToMenu(MenuProfileSearchGame,4015,4016,MenuWork,4);
  SearchLinkFile.AddLinksToMenu(PopupSearchGame,4015,4016,MenuWork,4);
end;

procedure TDFendReloadedMainForm.PostShow(var Msg: TMessage);
begin
  Case PrgSetup.StartWindowSize of
    0 : begin
          {nothing}
          {Fix height for smaller screens}
          Height:=Min(Height,Screen.WorkAreaHeight);
          If Top+Height>Screen.WorkAreaHeight then Top:=Screen.WorkAreaHeight-Height;
          {To fix misaligend ListView when stating maximized}
          If WindowState=wsMaximized then begin
            WindowState:=wsNormal;
            WindowState:=wsMaximized;
          end;
        end;
    1 : If PrgSetup.MainMaximized then begin
          WindowState:=wsMaximized;
        end else begin
          {Done in InitGUI};
          {Fix height for smaller screens}
          Height:=Min(Height,Screen.WorkAreaHeight);
          If Top+Height>Screen.WorkAreaHeight then Top:=Screen.WorkAreaHeight-Height;
        end;
    2 : If PrgSetup.MinimizeToTray then begin
          WindowState:=wsMinimized;
          ApplicationEventsMinimize(self);
          StartTrayMinimize:=True;
        end else begin
          WindowState:=wsMinimized;
        end;
    3 : WindowState:=wsMaximized;
  end;

  If ListView.Items.Count=0
    then TreeViewChange(TreeView,nil)
    else ListViewSelectItem(ListView,nil,False);

  {To fix misaligend ListView when stating maximized}
  UpdateBounds;
  Resize;
  Realign;

  InitViewStyle;
  with ScreenshotListView do begin ViewStyle:=vsReport; ViewStyle:=vsIcon; end;
  with SoundListView do begin ViewStyle:=vsReport; ViewStyle:=vsList; end;
  with VideoListView do begin ViewStyle:=vsReport; ViewStyle:=vsList; end;

  ProcessParams;

  If (ListView.Items.Count>0) and (ListView.Selected=nil) then begin
    ListView.Selected:=ListView.Items[0];
    SelectGame(TGame(ListView.Selected.Data));
  end;

  SetProcessWorkingSetSize(GetCurrentProcess,$ffffffff,$ffffffff);
end;

procedure TDFendReloadedMainForm.ProcessParams;
Var I : Integer;
    S,T : String;
    CloseOK : Boolean;
begin
  If ParamCount=0 then exit;

  S:=ParamStr(1);

  T:=Trim(ExtUpperCase(S));
  If (Pos('WINEMODE',T)>0) or (Pos('WINESUPPORTENABLED',T)>0) or (Pos('WINDOWSMODE',T)>0) or (Pos('NOWINESUPPORT',T)>0) or (Pos('WINESUPPORTDISABLED',T)>0) then exit;

  For I:=2 to ParamCount do S:=S+' '+ParamStr(I);
  T:=ExtUpperCase(S);

  For I:=0 to GameDB.Count-1 do If Trim(ExtUpperCase(GameDB[I].Name))=T then begin
    CloseOK:=True;
    If ScummVMMode(GameDB[I]) then begin
      RunScummVMGame(GameDB[I]);
      CloseOK:=(ZipManager.Count=0);
    end else begin
      If WindowsExeMode(GameDB[I]) then begin
        RunWindowsGame(GameDB[I]);
      end else begin
        RunGame(GameDB[I]);
        CloseOK:=(ZipManager.Count=0);
      end;
    end;
    If CloseOK then PostMessage(Handle,WM_Close,0,0);
    exit;
  end;

  MessageDlg(Format(LanguageSetup.MessageCouldNotFindGame,[S]),mtError,[mbOK],0);
end;

procedure TDFendReloadedMainForm.StartCaptureChangeNotify;
begin
  hScreenshotsChangeNotification:=FindFirstChangeNotification(
    PChar(MakeAbsPath(PrgSetup.CaptureDir,PrgSetup.BaseDir)),
    True,
    FILE_NOTIFY_CHANGE_FILE_NAME or FILE_NOTIFY_CHANGE_DIR_NAME or FILE_NOTIFY_CHANGE_ATTRIBUTES or FILE_NOTIFY_CHANGE_SIZE or FILE_NOTIFY_CHANGE_LAST_WRITE or FILE_NOTIFY_CHANGE_SECURITY
  );

  hConfsChangeNotification:=FindFirstChangeNotification(
    PChar(PrgDataDir+GameListSubDir),
    True,
    FILE_NOTIFY_CHANGE_FILE_NAME or FILE_NOTIFY_CHANGE_DIR_NAME or FILE_NOTIFY_CHANGE_ATTRIBUTES or FILE_NOTIFY_CHANGE_SIZE or FILE_NOTIFY_CHANGE_LAST_WRITE or FILE_NOTIFY_CHANGE_SECURITY
  );
end;

procedure TDFendReloadedMainForm.StopCaptureChangeNotify;
begin
  If hScreenshotsChangeNotification<>INVALID_HANDLE_VALUE then FindCloseChangeNotification(hScreenshotsChangeNotification);
  hScreenshotsChangeNotification:=INVALID_HANDLE_VALUE;

  If hConfsChangeNotification<>INVALID_HANDLE_VALUE then FindCloseChangeNotification(hConfsChangeNotification);
  hConfsChangeNotification:=INVALID_HANDLE_VALUE;
end;

procedure TDFendReloadedMainForm.SearchEditChange(Sender: TObject);
begin
  If SearchEdit.Font.Color=clGray then begin
    SearchEdit.Font.Color:=clWindowText;
    SearchEdit.Text:='';
    exit;
  end;
  TreeViewChange(Sender,TreeView.Selected);
end;

procedure TDFendReloadedMainForm.SelectGame(const AGame: TGame);
Var I : Integer;
begin
  If AGame=nil then exit;
  For I:=0 to ListView.Items.Count-1 do If TGame(ListView.Items[I].Data)=AGame then begin
    ListView.Selected:=ListView.Items[I];
    ListView.Selected.MakeVisible(False);
    break;
  end;
  ListViewSelectItem(self,ListView.Selected,ListView.Selected<>nil);
end;

procedure TDFendReloadedMainForm.TreeViewChange(Sender: TObject; Node: TTreeNode);
Var G : TGame;
    S : String;
    IL1, IL2 : TImageList;
begin
  If ListView.LargeImages=nil then IL1:=ListviewIconImageList else IL1:=ListView.LargeImages as TImageList;
  If ListView.SmallImages=nil then IL2:=ListviewImageList else IL2:=ListView.SmallImages as TImageList;

  ListView.Items.BeginUpdate;
  try
    If ListView.Selected<>nil then G:=TGame(ListView.Selected.Data) else G:=nil;

    If SearchEdit.Font.Color<>clGray then S:=SearchEdit.Text else S:='';

    If TreeView.Selected=nil then begin
      AddGamesToList(ListView,IL2,IL1,ImageList,GameDB,RemoveUnderline(LanguageSetup.All),'',S,PrgSetup.ShowExtraInfo,ListSort,ListSortReverse,False,MenuViewsScreenshots.Checked);
    end else begin
      If TreeView.Selected.Parent=nil
        then AddGamesToList(ListView,IL2,IL1,ImageList,GameDB,TreeView.Selected.Text,'',S,PrgSetup.ShowExtraInfo,ListSort,ListSortReverse,False,MenuViewsScreenshots.Checked)
        else AddGamesToList(ListView,IL2,IL1,ImageList,GameDB,TreeView.Selected.Parent.Text,TreeView.Selected.Text,S,PrgSetup.ShowExtraInfo,ListSort,ListSortReverse,False,MenuViewsScreenshots.Checked);
    end;
    If G<>nil then begin
      SelectGame(G);
    end else begin
      If ListView.Items.Count>0 then SelectGame(TGame(ListView.Items[0].Data));
    end;
  finally
    ListView.Items.EndUpdate;
  end;
end;

procedure TDFendReloadedMainForm.ListViewAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
Var FS : TFontStyles;
begin
  DefaultDraw:=True;
  FS:=[];
  If (Item<>nil) and (Item.Data<>nil) and TGame(Item.Data).Favorite then begin
    If PrgSetup.FavoritesBold then FS:=FS+[fsBold];
    If PrgSetup.FavoritesItalic then FS:=FS+[fsItalic];
    If PrgSetup.FavoritesUnderline then FS:=FS+[fsUnderline];
  end;
  TListview(Sender).Canvas.Font.Style:=FS;
end;

procedure TDFendReloadedMainForm.ListViewColumnClick(Sender: TObject; Column: TListColumn);
begin
  SetSortTypeByListViewCol(Column.Index,ListSort,ListSortReverse);
  TreeViewChange(Sender,TreeView.Selected);
end;

procedure TDFendReloadedMainForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_F2) and (Shift=[]) then MenuWork(MenuProfileEdit);
  If (Key=VK_F5) and (Shift=[]) then begin EditDefaultProfile(self,GameDB,SearchLinkFile,DeleteOnExit); LoadSearchLinks; end;
end;

procedure TDFendReloadedMainForm.ListViewDblClick(Sender: TObject);
begin
  MenuWork(ButtonRun);
end;

procedure TDFendReloadedMainForm.ListViewInfoTip(Sender: TObject; Item: TListItem; var InfoTip: string);
Var G : TGame;
    St : TStringList;
    I,J : Integer;
    S : String;
begin
  If Item=nil then exit;
  G:=TGame(Item.Data); If G=nil then exit;
  InfoTip:=G.CacheName;

  If G.Genre<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameGenre+': '+GetCustomGenreName(G.CacheGenre);
  If G.Developer<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameDeveloper+': '+G.CacheDeveloper;
  If G.Publisher<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GamePublisher+': '+G.CachePublisher;
  If G.Year<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameYear+': '+G.CacheYear;
  If G.Language<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameLanguage+': '+GetCustomLanguageName(G.CacheLanguage);
  If G.WWW<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameWWW+': '+G.WWW;

  St:=StringToStringList(G.UserInfo);
  try
    For I:=0 to St.Count-1 do begin
      S:=Trim(St[I]); If S='' then continue;
      J:=Pos('=',S); If J>0 then InfoTip:=InfoTip+#13+Trim(Copy(S,1,J-1))+': '+Trim(Copy(S,J+1,MaxInt));
    end;
  finally
    St.Free;
  end;

  S:=GetLastModificationDate(G); If S<>'' then InfoTip:=InfoTip+#13+LanguageSetup.GameLastModification+': '+S;

  If G.Notes<>'' then begin
    St:=StringToStringList(G.Notes);
    try
      If St.Count>0 then InfoTip:=InfoTip+#13;
      For I:=0 to Min(4,St.Count-1) do InfoTip:=InfoTip+#13+St[I];
    finally
      St.Free;
    end;
  end;
  If Trim(G.DataDir)<>'' then InfoTip:=InfoTip+#13+#13+LanguageSetup.GameDataDirInfo;
end;

procedure TDFendReloadedMainForm.ListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
Var B,B2,B3,CaptureFolder : Boolean;
    S : String;
    I,J : Integer;
    M : TMenuItem;
begin
  B:=Selected and (Item<>nil) and (Item.Data<>nil);
  If B then begin
    B2:=ScummVMMode(TGame(Item.Data));
    B3:=WindowsExeMode(TGame(Item.Data));
    S:=TGame(Item.Data).CaptureFolder;
    CaptureFolder:=(Trim(S)<>'');
    If CaptureFolder then begin S:=MakeAbsPath(S,PrgSetup.BaseDir); CaptureFolder:=DirectoryExists(S); end;
  end else begin
    B2:=False;
    B3:=False;
    CaptureFolder:=False;
  end;

  MenuRunGame.Enabled:=B;
  MenuRunSetup.Enabled:=B and (Trim(TGame(Item.Data).SetupExe)<>'');
  MenuProfileEdit.Enabled:=B;
  MenuProfileCopy.Enabled:=B;
  MenuProfileDelete.Enabled:=B;
  MenuProfileDeinstall.Enabled:=B and (not B3);
  MenuProfileMakeInstaller.Enabled:=B and (not B3);
  MenuProfileMakeZipArchive.Enabled:=B and (not B3);
  MenuFileCreateZIP.Enabled:=B and (not B3);
  MenuFileCreateInstaller.Enabled:=B and (not B3);
  If not B then begin
    MenuProfileViewConfFile.Visible:=True;
    MenuProfileViewConfFile.Enabled:=False;
    MenuProfileViewIniFile.Visible:=False;
  end else begin
    MenuProfileViewConfFile.Visible:=(not B2) and (not B3);
    MenuProfileViewConfFile.Enabled:=(not B2) and (not B3);
    MenuProfileViewIniFile.Visible:=B2;
    MenuProfileViewIniFile.Enabled:=B2;
  end;
  MenuProfileOpenFolder.Enabled:=B and ((Trim(TGame(Item.Data).GameExe)<>'') or (B2 and (Trim(TGame(Item.Data).ScummVMPath)<>'')));
  MenuProfileOpenCaptureFolder.Enabled:=CaptureFolder;
  MenuProfileOpenDataFolder.Enabled:=B and (Trim(TGame(Item.Data).DataDir)<>'');
  MenuProfileMarkAsFavorite.Enabled:=B;
  If B then begin
    If TGame(Item.Data).Favorite
      then MenuProfileMarkAsFavorite.Caption:=LanguageSetup.MenuProfileUnMarkAsFavorite
      else MenuProfileMarkAsFavorite.Caption:=LanguageSetup.MenuProfileMarkAsFavorite;
  end else begin
    MenuProfileMarkAsFavorite.Caption:=LanguageSetup.MenuProfileMarkAsFavorite;
  end;
  MenuProfileWWW.Enabled:=B and (Trim(TGame(Item.Data).WWW)<>'');
  MenuProfileCreateShortcut.Enabled:=B;
  MenuProfileSearchGame.Enabled:=B;

  PopupRunGame.Enabled:=B;
  PopupRunSetup.Enabled:=B and (Trim(TGame(Item.Data).SetupExe)<>'');
  PopupEdit.Enabled:=B;
  PopupCopy.Enabled:=B;
  PopupDelete.Enabled:=B;
  PopupDeinstall.Enabled:=B and (not B3);
  PopupMakeInstaller.Enabled:=B and (not B3);
  PopupMakeZipArchive.Enabled:=B and (not B3);
  If not B then begin
    PopupViewConfFile.Visible:=True;
    PopupViewConfFile.Enabled:=False;
    PopupViewINIFile.Visible:=False;
  end else begin
    PopupViewConfFile.Visible:=(not B2) and (not B3);
    PopupViewConfFile.Enabled:=(not B2) and (not B3);
    PopupViewINIFile.Visible:=B2;
    PopupViewINIFile.Enabled:=B2;
  end;
  PopupOpenFolder.Enabled:=B and ((Trim(TGame(Item.Data).GameExe)<>'') or (B2 and (Trim(TGame(Item.Data).ScummVMPath)<>'')));
  PopupOpenCaptureFolder.Enabled:=CaptureFolder;
  PopupOpenDataFolder.Enabled:=B and (Trim(TGame(Item.Data).DataDir)<>'');
  PopupWWW.Enabled:=B and (Trim(TGame(Item.Data).WWW)<>'');
  PopupMarkAsFavorite.Enabled:=B;
  If B then begin
    If TGame(Item.Data).Favorite
      then PopupMarkAsFavorite.Caption:=LanguageSetup.MenuProfileUnMarkAsFavorite
      else PopupMarkAsFavorite.Caption:=LanguageSetup.MenuProfileMarkAsFavorite;
  end else begin
    PopupMarkAsFavorite.Caption:=LanguageSetup.MenuProfileMarkAsFavorite;
  end;
  PopupCreateShortcut.Enabled:=B;
  PopupSearchGame.Enabled:=B;

  ScreenshotPopupOpenCaptureFolder.Enabled:=CaptureFolder;
  ScreenshotPopupRefresh.Enabled:=CaptureFolder;
  ScreenshotPopupImport.Enabled:=CaptureFolder;
  SoundPopupOpenCaptureFolder.Enabled:=CaptureFolder;
  SoundPopupRefresh.Enabled:=CaptureFolder;
  SoundPopupImport.Enabled:=CaptureFolder;
  VideoPopupOpenCaptureFolder.Enabled:=CaptureFolder;
  VideoPopupRefresh.Enabled:=CaptureFolder;
  VideoPopupImport.Enabled:=CaptureFolder;

  ButtonRun.Enabled:=B;
  ButtonRunSetup.Enabled:=B and (Trim(TGame(Item.Data).SetupExe)<>'');
  ButtonEdit.Enabled:=B;
  ButtonDelete.Enabled:=B;

  UpdateScreenshotList;

  UpdateOpenFileInDataFolderMenu;

  If Selected and (Item<>nil) then begin
    ViewFilesFrame.Visible:=True;
    ViewFilesFrame.SetGame(TGame(Item.Data));
  end else begin
    ViewFilesFrame.Visible:=False;
  end;

  MenuRunExtraFile.Clear;
  PopupRunExtraFile.Clear;
  MenuRunExtraFile.Visible:=False;
  PopupRunExtraFile.Visible:=False;
  If B and (not B2) then For I:=0 to 9 do begin
    S:=Trim(TGame(Item.Data).ExtraPrgFile[I]);
    J:=Pos(';',S);
    If (S='') or (J=0) then continue;
    M:=TMenuItem.Create(self);
    M.Caption:=Copy(S,1,J-1);
    M.OnClick:=MenuWork;
    M.Tag:=3010+I;
    MenuRunExtraFile.Add(M);
    M:=TMenuItem.Create(self);
    M.Caption:=Copy(S,1,J-1);
    M.OnClick:=MenuWork;
    M.Tag:=3010+I;
    PopupRunExtraFile.Add(M);
    MenuRunExtraFile.Visible:=True;
    PopupRunExtraFile.Visible:=True;
  end;
end;

Procedure TDFendReloadedMainForm.UpdateScreenshotList;
Var S,SelItem : String;
    I : Integer;
begin
  SelItem:='';
  If ScreenshotListView.Selected<>nil then SelItem:=ScreenshotListView.Selected.Caption;
  ScreenshotListView.Items.BeginUpdate;
  try
    ScreenshotListView.Items.Clear;
    ScreenshotImageList.Clear;
    If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
      S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S<>'' then AddScreenshotsToList(ScreenshotListView,ScreenshotImageList,S);
    end;
  finally
    ScreenshotListView.Items.EndUpdate;
  end;
  For I:=0 to ScreenshotListView.Items.Count-1 do If ScreenshotListView.Items[I].Caption=SelItem then begin
    ScreenshotListView.Selected:=ScreenshotListView.Items[I];
    break;
  end;

  ScreenshotsInfoPanel.Visible:=(ScreenshotListView.Items.Count=0) and (ListView.Selected<>nil);
  ScreenshotsInfoPanel.Height:=IfThen(ScreenshotsInfoPanel.Visible,17,0);
  If ScreenshotsInfoPanel.Visible then begin
    If ScummVMMode(TGame(ListView.Selected.Data)) then begin
      ScreenshotsInfoPanel.Caption:=LanguageSetup.CaptureScreenshotsInfoScumm;
    end else begin
      If WindowsExeMode(TGame(ListView.Selected.Data))
        then ScreenshotsInfoPanel.Caption:=''
        else ScreenshotsInfoPanel.Caption:=LanguageSetup.CaptureScreenshotsInfo;
    end
  end;
  ScreenshotListViewSelectItem(self,ScreenshotListView.Selected,True);

  SelItem:='';
  If SoundListView.Selected<>nil then SelItem:=SoundListView.Selected.Caption;
  SoundListView.Items.BeginUpdate;
  try
    SoundListView.Items.Clear;
    If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
      S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S<>'' then AddSoundsToList(SoundListView,S,33);
    end;
  finally
    SoundListView.Items.EndUpdate;
  end;
  For I:=0 to SoundListView.Items.Count-1 do If SoundListView.Items[I].Caption=SelItem then begin
    SoundListView.Selected:=SoundListView.Items[I];
    break;
  end;
  SoundInfoPanel.Visible:=(SoundListView.Items.Count=0) and (ListView.Selected<>nil) and (not ScummVMMode(TGame(ListView.Selected.Data))) and (not WindowsExeMode(TGame(ListView.Selected.Data)));
  SoundInfoPanel.Height:=IfThen(SoundInfoPanel.Visible,17,0);
  SoundListViewSelectItem(self,SoundListView.Selected,True);

  SelItem:='';
  If VideoListView.Selected<>nil then SelItem:=VideoListView.Selected.Caption;
  VideoListView.Items.BeginUpdate;
  try
    VideoListView.Items.Clear;
    If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
      S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S<>'' then AddVideosToList(VideoListView,S,38);
    end;
  finally
    VideoListView.Items.EndUpdate;
  end;
  For I:=0 to VideoListView.Items.Count-1 do If VideoListView.Items[I].Caption=SelItem then begin
    VideoListView.Selected:=VideoListView.Items[I];
    break;
  end;
  VideoInfoPanel.Visible:=(VideoListView.Items.Count=0) and (ListView.Selected<>nil) and (not ScummVMMode(TGame(ListView.Selected.Data))) and (not WindowsExeMode(TGame(ListView.Selected.Data)));
  VideoInfoPanel.Height:=IfThen(VideoInfoPanel.Visible,17,0);
  VideoListViewSelectItem(self,VideoListView.Selected,True);
end;

Procedure TDFendReloadedMainForm.UpdateOpenFileInDataFolderMenu;
Var B : Boolean;
    Dir : String;
begin
  B:=(ListView.Selected<>nil) and (ListView.Selected.Data<>nil) and (Trim(TGame(ListView.Selected.Data).DataDir)<>'');

  MenuProfileOpenFileInDataFolder.Enabled:=B;
  PopupOpenFileInDataFolder.Enabled:=B;

  while MenuProfileOpenFileInDataFolder.Count>0 do MenuProfileOpenFileInDataFolder.Items[0].Free;
  while PopupOpenFileInDataFolder.Count>0 do PopupOpenFileInDataFolder.Items[0].Free;

  If not B then exit;

  Dir:=IncludeTrailingPathDelimiter(MakeAbsPath(TGame(ListView.Selected.Data).DataDir,PrgSetup.BaseDir));
  if not DirectoryExists(Dir) then exit;

  AddDirToMenu(Dir,MenuProfileOpenFileInDataFolder,PopupOpenFileInDataFolder,0);
end;

Procedure TDFendReloadedMainForm.AddDirToMenu(const Dir : String; const Menu1, Menu2 : TMenuItem; const Level : Integer);
Var Rec : TSearchRec;
    I,Count : Integer;
    M1,M2,M : TMenuItem;
begin
  Count:=0;
  I:=FindFirst(Dir+'*.*',faDirectory,Rec);
  try
    while I=0 do begin
      If ((Rec.Attr and faDirectory)=faDirectory) and (Rec.Name<>'.') and (Rec.Name<>'..') then begin
        If Count=20 then begin
          M1:=TMenuItem.Create(Menu1); M1.Caption:='(...)'; M1.Tag:=2; M1.OnClick:=OpenFileInDataFolderMenuWork; M1.ImageIndex:=8; Menu1.Add(M1);
          M2:=TMenuItem.Create(Menu2); M2.Caption:='(...)'; M2.Tag:=2; M2.OnClick:=OpenFileInDataFolderMenuWork; M2.ImageIndex:=8; Menu2.Add(M2);
          break;
        end;
        M1:=TMenuItem.Create(Menu1); M1.Caption:=Rec.Name; M1.Tag:=1; M1.ImageIndex:=11; Menu1.Add(M1);
        M2:=TMenuItem.Create(Menu2); M2.Caption:=Rec.Name; M2.Tag:=1; M2.ImageIndex:=11; Menu2.Add(M2);
        If Level<2 then begin
          AddDirToMenu(Dir+Rec.Name+'\',M1,M2,Level+1);
        end else begin
          M:=TMenuItem.Create(M1); M.Caption:='(...)'; M.Tag:=2; M.OnClick:=OpenFileInDataFolderMenuWork; M.ImageIndex:=8; M1.Add(M);
          M:=TMenuItem.Create(M2); M.Caption:='(...)'; M.Tag:=2; M.OnClick:=OpenFileInDataFolderMenuWork; M.ImageIndex:=8; M2.Add(M);
        end;
        inc(Count);
      end;
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;

  Count:=0;
  I:=FindFirst(Dir+'*.*',faAnyFile,Rec);
  try
    while I=0 do begin
      If (Rec.Attr and faDirectory)=0 then begin
        If Count=20 then begin
          M1:=TMenuItem.Create(Menu1); M1.Caption:='(...)'; M1.Tag:=2; M1.OnClick:=OpenFileInDataFolderMenuWork; M1.ImageIndex:=8; Menu1.Add(M1);
          M2:=TMenuItem.Create(Menu2); M2.Caption:='(...)'; M2.Tag:=2; M2.OnClick:=OpenFileInDataFolderMenuWork; M2.ImageIndex:=8; Menu2.Add(M2);
          break;
        end;
        M1:=TMenuItem.Create(Menu1); M1.Caption:=Rec.Name; M1.Tag:=1; M1.OnClick:=OpenFileInDataFolderMenuWork; M1.ImageIndex:=24; Menu1.Add(M1);
        M2:=TMenuItem.Create(Menu2); M2.Caption:=Rec.Name; M2.Tag:=1; M2.OnClick:=OpenFileInDataFolderMenuWork; M2.ImageIndex:=24; Menu2.Add(M2);
        inc(Count);
      end;
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;
end;

Procedure TDFendReloadedMainForm.OpenFileInDataFolderMenuWork(Sender : TObject);
Var I : Integer;
    Dir,S : String;
    M : TMenuItem;
begin
  M:=Sender as TMenuItem;
  I:=M.Tag;
  If (I<>1) and (I<>2) then exit;
  If I=1 then S:=RemoveUnderline(M.Caption) else S:='';

  M:=M.Parent;
  while (M<>MenuProfileOpenFileInDataFolder) and (M<>PopupOpenFileInDataFolder) do begin
    S:=RemoveUnderline(M.Caption)+'\'+S;
    M:=M.Parent;
  end;

  if (ListView.Selected=nil) or (ListView.Selected.Data=nil) or (Trim(TGame(ListView.Selected.Data).DataDir)='') then exit;
  Dir:=IncludeTrailingPathDelimiter(MakeAbsPath(TGame(ListView.Selected.Data).DataDir,PrgSetup.BaseDir));
  If not DirectoryExists(Dir) then exit;

  If I=2
    then ShellExecute(Handle,'open',PChar(Dir+S),nil,PChar(Dir+S),SW_SHOW)
    else ShellExecute(Handle,'open',PChar(Dir+S),nil,nil,SW_SHOW);
end;

Procedure TDFendReloadedMainForm.UpdateAddFromTemplateMenu;
Var TemplateDB : TGameDB;
    I : Integer;
    M : TMenuItem;
begin
  while MenuProfileAddFromTemplate.Count>0 do MenuProfileAddFromTemplate.Items[0].Free;
  while AddButtonMenuAddFromTemplate.Count>0 do AddButtonMenuAddFromTemplate.Items[0].Free;
  while TrayIconPopupAddFromTemplate.Count>0 do TrayIconPopupAddFromTemplate.Items[0].Free;

  TemplateDB:=TGameDB.Create(PrgDataDir+TemplateSubDir);
  try
    MenuProfileAddFromTemplate.Visible:=(TemplateDB.Count>0);
    AddButtonMenuAddFromTemplate.Visible:=(TemplateDB.Count>0);
    For I:=0 to TemplateDB.Count-1 do begin
      M:=TMenuItem.Create(MenuProfileAddFromTemplate);
      M.Caption:=TemplateDB[I].Name;
      M.Tag:=I;
      M.OnClick:=AddFromTemplateClick;
      MenuProfileAddFromTemplate.Add(M);

      M:=TMenuItem.Create(AddButtonMenuAddFromTemplate);
      M.Caption:=TemplateDB[I].Name;
      M.Tag:=I;
      M.OnClick:=AddFromTemplateClick;
      AddButtonMenuAddFromTemplate.Add(M);

      M:=TMenuItem.Create(TrayIconPopupAddFromTemplate);
      M.Caption:=TemplateDB[I].Name;
      M.Tag:=I;
      M.OnClick:=AddFromTemplateClick;
      TrayIconPopupAddFromTemplate.Add(M);
    end;
  finally
    TemplateDB.Free;
  end;

  If Assigned(QuickStartForm) then QuickStartForm.LoadTemplateList;
end;

procedure TDFendReloadedMainForm.UpdateGamesListByViewFilesFrame(Sender: TObject);
begin
  TreeViewChange(Sender,TreeView.Selected);
end;

Procedure TDFendReloadedMainForm.LoadListViewGUISetup(const ListView : TListView; const Background, FontColor : String; const FontSize : Integer);
Var S : String;
begin
  S:=Trim(Background);
  If S='' then begin ListView.Color:=clWindow; SetListViewImage(ListView,'') end else begin
    try
      ListView.Color:=StringToColor(S); SetListViewImage(ListView,'');
    except
      ListView.Color:=clWindow; SetListViewImage(ListView,MakeAbsPath(S,PrgSetup.BaseDir));
    end;
  end;

  S:=Trim(FontColor);
  If S='' then ListView.Font.Color:=clWindowText else begin
    try ListView.Font.Color:=StringToColor(FontColor); except ListView.Font.Color:=clWindowText; end;
  end;
  ListView.Font.Size:=FontSize;
end;

Procedure TDFendReloadedMainForm.LoadTreeViewGUISetup(const TreeView : TTreeView; const Background, FontColor : String; const FontSize : Integer);
Var S : String;
begin
  S:=Trim(Background);
  If S='' then begin TreeView.Color:=clWindow; end else begin
    try
      TreeView.Color:=StringToColor(S);
    except
      TreeView.Color:=clWindow;
    end;
  end;

  S:=Trim(FontColor);
  If S='' then TreeView.Font.Color:=clWindowText else begin
    try TreeView.Font.Color:=StringToColor(FontColor); except TreeView.Font.Color:=clWindowText; end;
  end;
  TreeView.Font.Size:=FontSize;
end;

Procedure TDFendReloadedMainForm.LoadCoolBarGUISetup(const CoolBar : TCoolBar; const Background : String; const FontSize : Integer);
Var S : String;
    P : TPicture;
begin
  S:=Trim(Background);
  CoolBar.Bitmap:=nil;
  If S<>'' then begin
    S:=MakeAbsPath(S,PrgSetup.BaseDir);
    If FileExists(S) then begin
      P:=LoadImageFromFile(S);
      try
        If P<>nil then CoolBar.Bitmap.Assign(P.Graphic);
      finally
        P.Free;
      end;
    end;
  end;

  CoolBar.Font.Size:=FontSize;
end;

Procedure TDFendReloadedMainForm.SetupToolbarHints;
begin
  ToolBar.ShowCaptions:=PrgSetup.ShowToolbarTexts;
  ToolBar.List:=ToolBar.ShowCaptions;
  If not ToolBar.ShowCaptions then ToolBar.ButtonWidth:=ToolBar.ButtonHeight;

  ButtonClose.Caption:=LanguageSetup.ButtonClose;
  ButtonRun.Caption:=LanguageSetup.ButtonRun;
  ButtonRunSetup.Caption:=LanguageSetup.ButtonRunSetup;
  ButtonAdd.Caption:=LanguageSetup.ButtonAdd;
  ButtonEdit.Caption:=LanguageSetup.ButtonEdit;
  ButtonDelete.Caption:=LanguageSetup.ButtonDelete;

  If ToolBar.ShowCaptions then begin
    ButtonClose.Hint:=LanguageSetup.ButtonCloseHintMain;
    ButtonRun.Hint:=LanguageSetup.ButtonRunHintMain;
    ButtonRunSetup.Hint:=LanguageSetup.ButtonRunSetupHintMain;
    ButtonAdd.Hint:=LanguageSetup.ButtonAddHintMain;
    ButtonEdit.Hint:=LanguageSetup.ButtonEditHintMain;
    ButtonDelete.Hint:=LanguageSetup.ButtonDeleteHintMain;
  end else begin
    ButtonClose.Hint:=RemoveUnderline(LanguageSetup.ButtonClose)+#13+#13+LanguageSetup.ButtonCloseHintMain;
    ButtonRun.Hint:=RemoveUnderline(LanguageSetup.ButtonRun)+#13+#13+LanguageSetup.ButtonRunHintMain;
    ButtonRunSetup.Hint:=RemoveUnderline(LanguageSetup.ButtonRunSetup)+#13+#13+LanguageSetup.ButtonRunSetupHintMain;
    ButtonAdd.Hint:=RemoveUnderline(LanguageSetup.ButtonAdd)+#13+#13+LanguageSetup.ButtonAddHintMain;
    ButtonEdit.Hint:=RemoveUnderline(LanguageSetup.ButtonEdit)+#13+#13+LanguageSetup.ButtonEditHintMain;
    ButtonDelete.Hint:=RemoveUnderline(LanguageSetup.ButtonDelete)+#13+#13+LanguageSetup.ButtonDeleteHintMain;
  end;
end;

Procedure TDFendReloadedMainForm.LoadGUISetup(const PrgStart : Boolean);
Var S : String;
begin
  UserIconLoader.IconSet:=PrgSetup.IconSet;
  ViewFilesFrame.LoadLanguage; {to update icons right after program start}

  ListviewScreenshotImageList.Width:=PrgSetup.ScreenshotListViewWidth;
  ListviewScreenshotImageList.Height:=PrgSetup.ScreenshotListViewHeight;
  ListviewIconImageList.Height:=PrgSetup.IconSize;
  ListviewIconImageList.Width:=PrgSetup.IconSize;

  ListView.GridLines:=PrgSetup.GridLinesInGamesList;

  If not PrgStart then begin
    ListView.Items.BeginUpdate;
    try
      S:=GamesListSaveColWidthsToString(ListView);
      ListView.Items.Clear;
      InitListViewForGamesList(ListView,PrgSetup.ShowExtraInfo);
      GamesListLoadColWidthsFromString(ListView,S);
      InitTreeViewForGamesList(TreeView,GameDB);
      if not PrgStart then TreeViewChange(self,TreeView.Selected);
    finally
      ListView.Items.EndUpdate;
    end;
  end;

  LoadListViewGUISetup(ListView,PrgSetup.GamesListViewBackground,PrgSetup.GamesListViewFontColor,PrgSetup.GamesListViewFontSize);
  LoadListViewGUISetup(ScreenshotListView,PrgSetup.ScreenshotsListViewBackground,PrgSetup.ScreenshotsListViewFontColor,PrgSetup.ScreenshotsListViewFontSize);
  LoadListViewGUISetup(SoundListView,PrgSetup.ScreenshotsListViewBackground,PrgSetup.ScreenshotsListViewFontColor,PrgSetup.ScreenshotsListViewFontSize);
  LoadListViewGUISetup(VideoListView,PrgSetup.ScreenshotsListViewBackground,PrgSetup.ScreenshotsListViewFontColor,PrgSetup.ScreenshotsListViewFontSize);
  LoadTreeViewGUISetup(TreeView,PrgSetup.GamesTreeViewBackground,PrgSetup.GamesTreeViewFontColor,PrgSetup.GamesTreeViewFontSize);
  LoadCoolBarGUISetup(CoolBar,PrgSetup.ToolbarBackground,PrgSetup.ToolbarFontSize);

  CoolBar.Visible:=PrgSetup.ShowToolbar;
  SetupToolbarHints;

  ButtonClose.Visible:=PrgSetup.ShowToolbarButtonClose;
  ButtonRun.Visible:=PrgSetup.ShowToolbarButtonRun;
  ButtonRunSetup.Visible:=PrgSetup.ShowToolbarButtonRunSetup;
  ButtonAdd.Visible:=PrgSetup.ShowToolbarButtonAdd;
  ButtonEdit.Visible:=PrgSetup.ShowToolbarButtonEdit;
  ButtonDelete.Visible:=PrgSetup.ShowToolbarButtonDelete;

  SearchEdit.Visible:=PrgSetup.ShowSearchBox;
  MenuViewsShowExtraInfo.Checked:=PrgSetup.ShowExtraInfo;
  MenuViewsShowSearchBox.Checked:=PrgSetup.ShowSearchBox;
  MenuViewsShowTooltips.Checked:=PrgSetup.ShowTooltips;
  ListView.ShowHint:=PrgSetup.ShowTooltips;

  TreeView.OnChange:=TreeViewChange;

  MenuRunRunScummVM.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
  MenuRunOpenScummVMConfig.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
  MenuProfileAddScummVM.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
  AddButtonMenuAddScummVM.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
  MenuHelpScummVMCompatibilityIntern.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
  TrayIconPopupAddScummVMProfile.Visible:=(Trim(PrgSetup.ScummVMPath)<>'');
end;

Procedure TDFendReloadedMainForm.StartWizard(const ExeFile : String; const WindowsExeFile : Boolean);
Var G : TGame;
    B : Boolean;
begin
   G:=nil;
   try
     if not ShowWizardDialog(self,GameDB,ExeFile,WindowsExeFile,G,B,SearchLinkFile) then exit;
   finally
     LoadSearchLinks;
   end;
   InitTreeViewForGamesList(TreeView,GameDB);
   TreeViewChange(self,TreeView.Selected);
   SelectGame(G);
   If B then MenuWork(ButtonEdit);
end;

Procedure TDFendReloadedMainForm.AddProfile(const ExeFile : String; const Mode : String; const TemplateNr : Integer);
Var G,DefaultGame : TGame;
    TemplateDB : TGameDB;
begin
   G:=nil;
   TemplateDB:=nil;

   If TemplateNr>=0 then begin
     TemplateDB:=TGameDB.Create(PrgDataDir+TemplateSubDir);
     DefaultGame:=TemplateDB[TemplateNr];
   end else begin
     DefaultGame:=TGame.Create(PrgSetup);
   end;

   try
     If Mode<>'' then begin
       DefaultGame.ProfileMode:=Mode;
       if not ModernEditGameProfil(self,GameDB,G,DefaultGame,SearchLinkFile,DeleteOnExit,ExeFile) then exit;
     end else begin
       If PrgSetup.DFendStyleProfileEditor then begin
         if not EditGameProfil(self,GameDB,G,DefaultGame,SearchLinkFile,DeleteOnExit,ExeFile) then exit;
       end else begin
         if not ModernEditGameProfil(self,GameDB,G,DefaultGame,SearchLinkFile,DeleteOnExit,ExeFile) then exit;
       end;
     end;
   finally
     LoadSearchLinks;
     If TemplateNr>=0 then begin
       TemplateDB.Free;
     end else begin
       DefaultGame.ProfileMode:='DOSBox';
       DefaultGame.Free;
     end;
   end;
   InitTreeViewForGamesList(TreeView,GameDB);
   TreeViewChange(self,TreeView.Selected);
   SelectGame(G);
end;

Procedure TDFendReloadedMainForm.AfterSetupDialog(ColWidths, UserCols : String);
Var G : TGame;
    St,St1,St2 : TStringList;
    I : Integer;
begin
   G:=nil;
   If ListView.Selected<>nil then G:=TGame(ListView.Selected.Data);
   LoadLanguage(PrgSetup.Language);
   If Assigned(QuickStartForm) then QuickStartForm.BuildTree;
   LoadMenuLanguage;
   If SearchEdit.Font.Color=clGray then begin
     SearchEdit.OnChange:=nil;
     SearchEdit.Text:=LanguageSetup.Search;
     SearchEdit.OnChange:=SearchEditChange;
   end;
   LoadGUISetup(False);
   St1:=ValueToList(UserCols); St2:=ValueToList(GetUserCols); St:=ValueToList(ColWidths);
   try
     For I:=0 to Min(St1.Count,St2.Count)-1 do If ExtUpperCase(St1[I])<>ExtUpperCase(St2[I]) then St[8+I]:='-1';
     ColWidths:=ListToValue(St);
   finally
     St.Free; St1.Free; St2.Free;
   end;
   GamesListLoadColWidthsFromString(ListView,ColWidths);
   SelectGame(G);
end;

procedure TDFendReloadedMainForm.MenuWork(Sender: TObject);
Var G,DefaultGame : TGame;
    S,T : String;
    L : TList;
    I : Integer;
    P : TPoint;
    St,St1,St2 : TStringList;
    B,C : Boolean;
begin
  StopCaptureChangeNotify;
  try
    Case (Sender as TComponent).Tag of
      {File}
      1001 : begin
               OpenDialog.Options:=OpenDialog.Options+[ofAllowMultiSelect];
               try
                 OpenDialog.DefaultExt:='conf';
                 OpenDialog.Title:=LanguageSetup.MenuFileImportConfTitle;
                 OpenDialog.Filter:=LanguageSetup.MenuFileImportConfFilter;
                 If not OpenDialog.Execute then exit;
                 For I:=0 to OpenDialog.Files.Count-1 do begin
                   G:=ImportConfFile(GameDB,OpenDialog.Files[I]);
                   If G<>nil then begin
                     InitTreeViewForGamesList(TreeView,GameDB);
                     TreeViewChange(Sender,TreeView.Selected);
                     SelectGame(G);
                   end;
                 end;
               finally
                 OpenDialog.Options:=OpenDialog.Options-[ofAllowMultiSelect];
               end;
             end;
      1002 : begin
               SaveDialog.DefaultExt:='txt';
               SaveDialog.FileName:='';
               SaveDialog.Title:=LanguageSetup.MenuFileExportGamesListDialog;
               SaveDialog.Filter:=LanguageSetup.MenuFileExportGamesListFilter;
               if not SaveDialog.Execute then exit;
               ExportGamesList(GameDB,SaveDialog.FileName);
             end;
      1003 : ExportConfFiles(self,GameDB);
      1004 : ExportProfFiles(self,GameDB);
      1005 : ExportXMLFiles(self,GameDB);
      1006 : begin
               S:=GamesListSaveColWidthsToString(ListView);
               T:=GetUserCols;
               if not ShowSetupDialog(self,GameDB) then exit;
               AfterSetupDialog(S,T);
             end;
      1007 : Close;
      1008 : begin
               OpenDialog.Options:=OpenDialog.Options+[ofAllowMultiSelect];
               try
                 OpenDialog.DefaultExt:='prof';
                 OpenDialog.Title:=LanguageSetup.MenuFileImportProfTitle;
                 OpenDialog.Filter:=LanguageSetup.MenuFileImportProfFilter;
                 If not OpenDialog.Execute then exit;
                 For I:=0 to OpenDialog.Files.Count-1 do begin
                   S:=GameDB.ProfFileName(ExtractFileName(OpenDialog.Files[I]),True);
                   if not CopyFile(PChar(OpenDialog.Files[I]),PChar(S),True) then begin
                     MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[OpenDialog.Files[I],S]),mtError,[mbOK],0);
                     continue;
                   end;
                   G:=TGame.Create(S);
                   GameDB.Add(G);
                   InitTreeViewForGamesList(TreeView,GameDB);
                   TreeViewChange(Sender,TreeView.Selected);
                   SelectGame(G);
                 end;
               finally
                 OpenDialog.Options:=OpenDialog.Options-[ofAllowMultiSelect];
               end;
             end;
      1009 : begin
               OpenDialog.DefaultExt:='xml';
               {OpenDialog.Title:=LanguageSetup.MenuFileImportXMLTitle;}
               OpenDialog.Title:='XML import';
               {OpenDialog.Filter:=LanguageSetup.MenuFileImportXMLFilter;}
               OpenDialog.Filter:='XML files (*.xml)|*xml|All files|*.*';
               If not OpenDialog.Execute then exit;
               If ListView.Selected<>nil then G:=TGame(ListView.Selected.Data) else G:=nil;
               S:=ImportXMLFile(GameDB,OpenDialog.FileName);
               If S<>'' then begin MessageDlg(S,mtError,[mbOK],0); exit; end;
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
               SelectGame(G);
             end;
      1010 : begin
               OpenDialog.Options:=OpenDialog.Options+[ofAllowMultiSelect];
               try
                 OpenDialog.DefaultExt:='zip';
                 OpenDialog.Title:=LanguageSetup.ProfileMountingZipFileGeneral;
                 OpenDialog.Filter:=ProcessFileNameFilter(LanguageSetup.ProfileMountingZipFileFilter2,LanguageSetup.ProfileMountingZipFileFilter2ArchiveFiles);
                 If not OpenDialog.Execute then exit;
                 For I:=0 to OpenDialog.Files.Count-1 do begin
                   G:=ImportZipPackage(self,OpenDialog.Files[I],GameDB);
                   If G<>nil then begin
                     InitTreeViewForGamesList(TreeView,GameDB);
                     TreeViewChange(Sender,TreeView.Selected);
                     SelectGame(G);
                   end;
                 end;
               finally
                 OpenDialog.Options:=OpenDialog.Options-[ofAllowMultiSelect];
               end;
             end;
      {View}
      2001 : begin
               PrgSetup.ShowTree:=not PrgSetup.ShowTree;
               TreeView.Visible:=PrgSetup.ShowTree;
               MenuViewsShowTree.Checked:=PrgSetup.ShowTree;
               If not PrgSetup.ShowTree then begin
                 TreeView.Selected:=nil;
                 TreeViewChange(Sender,nil);
               end;
             end;
      2002 : begin
               PrgSetup.ShowScreenshots:=not PrgSetup.ShowScreenshots;
               CapturePageControl.Visible:=PrgSetup.ShowScreenshots;
               MenuViewsShowScreenshots.Checked:=PrgSetup.ShowScreenshots;
               ListViewSelectItem(Sender,ListView.Selected,True);
             end;
      2003 : begin
               PrgSetup.ShowSearchBox:=not PrgSetup.ShowSearchBox;
               SearchEdit.Visible:=PrgSetup.ShowSearchBox;
               MenuViewsShowSearchBox.Checked:=PrgSetup.ShowSearchBox;

               If SearchEdit.Font.Color=clGray then begin
                 SearchEdit.OnChange:=nil;
                 SearchEdit.Text:=LanguageSetup.Search;
                 SearchEdit.OnChange:=SearchEditChange;
               end;
               LoadGUISetup(False);
             end;
      2004 : begin
               PrgSetup.ShowExtraInfo:=not PrgSetup.ShowExtraInfo;
               MenuViewsShowExtraInfo.Checked:=PrgSetup.ShowExtraInfo;
               S:=GamesListSaveColWidthsToString(ListView);
               InitListViewForGamesList(ListView,PrgSetup.ShowExtraInfo);
               GamesListLoadColWidthsFromString(ListView,S);
               TreeViewChange(Sender,TreeView.Selected);
             end;
      2005 : begin
               PrgSetup.ShowTooltips:=not PrgSetup.ShowTooltips;
               MenuViewsShowTooltips.Checked:=PrgSetup.ShowTooltips;
               ListView.ShowHint:=PrgSetup.ShowTooltips;
             end;
      2006 : begin PrgSetup.ListViewStyle:='SimpleListNoIcons'; InitViewStyle; end;
      2007 : begin PrgSetup.ListViewStyle:='SimpleList'; InitViewStyle; end;
      2008 : begin PrgSetup.ListViewStyle:='ListNoIcons'; InitViewStyle; end;
      2009 : begin PrgSetup.ListViewStyle:='List'; InitViewStyle; end;
      2010 : begin PrgSetup.ListViewStyle:='SmallIcons'; InitViewStyle; end;
      2011 : begin PrgSetup.ListViewStyle:='Icons'; InitViewStyle; end;
      2012 : begin PrgSetup.ListViewStyle:='Screenshots'; InitViewStyle; end;
      2013 : begin
               If Assigned(QuickStartForm) then begin
                 If not QuickStartForm.Working then FreeAndNil(QuickStartForm)
               end else begin
                 QuickStartForm:=TQuickStartForm.Create(self);
                 QuickStartForm.OnAddProfile:=AddProfileFromQuickStarter;
                 QuickStartForm.OnMenuCloseNotify:=QuickStarterCloseNotify;
                 QuickStartForm.Show;
               end;
               MenuViewsQuickStarter.Checked:=not MenuViewsQuickStarter.Checked;
             end;
      {Run}
      3001 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               {For fixing problems with not hidden tooltips} ListView.ShowHint:=False; ListView.ShowHint:=PrgSetup.ShowTooltips;
               G:=TGame(ListView.Selected.Data);
               If ScummVMMode(G) then begin
                 RunScummVMGame(G)
               end else begin
                 If WindowsExeMode(G)
                   then RunWindowsGame(G)
                   else RunGame(G);
               end;
             end;
      3002 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               {For fixing problems with not hidden tooltips} ListView.ShowHint:=False; ListView.ShowHint:=PrgSetup.ShowTooltips;
               G:=TGame(ListView.Selected.Data);
               If WindowsExeMode(G) then RunWindowsGame(G,True) else RunGame(G,True);
             end;
      3003 : If FileExists(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName)
               then ShellExecute(Handle,'open',PChar(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName),nil,PChar(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)),SW_SHOW)
               else MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName]),mtError,[mbOK],0);
      3004 : begin
               If not FileExists(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName) then begin
                 MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName]),mtError,[mbOK],0);
                 exit;
               end;
               DefaultGame:=TGame.Create(PrgSetup);
               try
                 G:=TGame.Create(TempDir+'TempGameRec.prof');
                 try
                   with G do begin AssignFrom(DefaultGame); GameExe:=''; Autoexec:=''; NrOfMounts:=0; end;
                   RunWithCommandline(G,'-startmapper',True);
                 finally
                   G.Free;
                 end;
               finally
                 DefaultGame.Free;
               end;
               ExtDeleteFile(TempDir+'TempGameRec.prof',ftTemp);
             end;
      3005 : If FileExists(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxConfFileName)
               then OpenFileInEditor(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxConfFileName)
               else MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxConfFileName]),mtError,[mbOK],0);
      3006 : If FileExists(IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)+ScummPrgFile)
               then ShellExecute(Handle,'open',PChar(IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)+ScummPrgFile),nil,PChar(IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)),SW_SHOW)
               else MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)+ScummPrgFile]),mtError,[mbOK],0);
      3007 : begin
               S:=FindScummVMIni;
              If S<>''
                 then OpenFileInEditor(S)
                 else MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[S]),mtError,[mbOK],0);
             end;
      3010..3019 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
                     G:=TGame(ListView.Selected.Data);
                     If ScummVMMode(G) then exit;
                     If WindowsExeMode(G)
                       then RunWindowssExtraFile(G,(Sender as TComponent).Tag-3010)
                       else RunExtraFile(G,(Sender as TComponent).Tag-3010);
                   end;
      {Profile}
      4000 : Case PrgSetup.AddButtonFunction of
               0 : MenuWork(MenuProfileAdd);
               1 : MenuWork(MenuProfileAddWithWizard);
               2 : begin
                     P:=ButtonAdd.Parent.ClientToScreen(Point(ButtonAdd.Left,ButtonAdd.Top));
                     AddButtonPopupMenu.Popup(P.X+5,P.Y+5);
                   end;
             end;
      4001 : AddProfile('','',-1);
      4002 : StartWizard('',False);
      4003 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               L:=TList.Create;
               try
                 For I:=0 to ListView.Items.Count-1 do L.Add(ListView.Items[I].Data);
                 G:=TGame(ListView.Selected.Data);
                 If PrgSetup.DFendStyleProfileEditor then begin
                   if not EditGameProfil(self,GameDB,G,nil,SearchLinkFile,DeleteOnExit,'',L) then exit;
                 end else begin
                   if not ModernEditGameProfil(self,GameDB,G,nil,SearchLinkFile,DeleteOnExit,'',L) then exit;
                 end;
                 InitTreeViewForGamesList(TreeView,GameDB);
                 TreeViewChange(Sender,TreeView.Selected);
                 SelectGame(G);
               finally
                 LoadSearchLinks;
                 L.Free;
               end;
             end;
      4004 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               S:=TGame(ListView.Selected.Data).Name;
               If not ShowCopyProfileDialog(self,Trim(TGame(ListView.Selected.Data).DataDir)<>'',S,B,C) then exit;
               G:=GameDB[GameDB.Add(S)];
               G.AssignFrom(TGame(ListView.Selected.Data));
               G.Name:=S;
               If B then G.CaptureFolder:=IncludeTrailingPathDelimiter(PrgSetup.CaptureDir)+MakeFileSysOKFolderName(S)+'\';
               If C then G.DataDir:='';
               G.LoadCache;
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
               SelectGame(G);
             end;
      4005 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               G:=TGame(ListView.Selected.Data);
               If PrgSetup.AskBeforeDelete then begin
                 if MessageDlg(Format(LanguageSetup.MessageConfirmationDeleteRecordOnly,[G.Name]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
               end;
               ListView.Items.Clear;
               GameDB.Delete(G);
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
             end;
      4006 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               G:=TGame(ListView.Selected.Data);
               ListView.Selected:=nil;
               ListView.Items.Clear;
               ViewFilesFrame.SetGame(nil);
               UninstallGame(self,GameDB,G);
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
             end;
      4007 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
               S:=''; G:=TGame(ListView.Selected.Data);
               If DOSBoxMode(G) then S:=ExtractFilePath(MakeAbsPath(G.GameExe,PrgSetup.BaseDir));
               If ScummVMMode(G) then S:=MakeAbsPath(G.ScummVMPath,PrgSetup.BaseDir);
               If WindowsExeMode(G) then S:=ExtractFilePath(MakeAbsPath(G.GameExe,PrgSetup.BaseDir));
               ShellExecute(Handle,'open',PChar(S),nil,PChar(S),SW_SHOW);
             end;
      4008 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
               S:=MakeAbsPath(TGame(ListView.Selected.Data).DataDir,PrgSetup.BaseDir);
               ShellExecute(Handle,'open',PChar(S),nil,PChar(S),SW_SHOW);
             end;
      4009 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
               S:=Trim(TGame(ListView.Selected.Data).WWW);
               If S='' then exit;
               If ExtUpperCase(Copy(S,1,7))<>'HTTP:/'+'/' then S:='http:/'+'/'+S;
               ShellExecute(Handle,'open',PChar(S),nil,nil,SW_SHOW);
             end;
      4010 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
               TGame(ListView.Selected.Data).Favorite:=not TGame(ListView.Selected.Data).Favorite;
               TreeViewChange(Sender,TreeView.Selected);
             end;
      4011 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               If WineSupportEnabled and PrgSetup.LinuxLinkMode then begin
                 CreateLinuxShortCut(self,TGame(ListView.Selected.Data));
               end else begin
                 G:=TGame(ListView.Selected.Data);
                 If WindowsExeMode(G)
                   then ShowCreateShortcutDialog(self,G.Name,G.SetupFile,G.Icon,G.GameExe,G.GameParameters,False,True)
                   else ShowCreateShortcutDialog(self,G.Name,G.SetupFile,G.Icon,'','',ScummVMMode(G),False);
               end;
             end;
      4012 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               BuildInstallerForSingleGame(self,TGame(ListView.Selected.Data));
             end;
      4013 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               G:=TGame(ListView.Selected.Data);
               OpenConfigurationFile(G,DeleteOnExit);
             end;
      4014 : AddProfile('','ScummVM',-1);
      4015 : OpenLink((Sender as TMenuItem).Hint,'<GAMENAME>',TGame(ListView.Selected.Data).Name);
      4016 : If SearchLinkFile.EditFile(False) then LoadSearchLinks;
      4017 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
                 MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
               end;
               SaveDialog.DefaultExt:='zip';
               SaveDialog.FileName:=ExtractFileName(ChangeFileExt(TGame(ListView.Selected.Data).SetupFile,''));
               SaveDialog.Title:=LanguageSetup.ProfileMountingZipFileGeneral;
               SaveDialog.Filter:=ProcessFileNameFilter(LanguageSetup.ProfileMountingZipFileFilter2,LanguageSetup.ProfileMountingZipFileFilter2ArchiveFiles);
               If not SaveDialog.Execute then exit;
               BuildZipPackage(self,TGame(ListView.Selected.Data),SaveDialog.Filename);
             end;
      4018 : AddProfile('','Windows',-1);
      4019 : If (ListView.Selected<>nil) and (ListView.Selected.Data<>nil) then begin
               G:=TGame(ListView.Selected.Data); If Trim(G.CaptureFolder)='' then exit;
               S:=MakeAbsPath(G.CaptureFolder,PrgSetup.BaseDir);
               If DirectoryExists(S) then ShellExecute(Handle,'explore',PChar(S),nil,PChar(S),SW_SHOW)
             end;
      {Extras}
      5001 : begin S:=''; ShowIconManager(self,S,PrgSetup.GameDir,True); end;
      5002 : ShowHistoryDialog(self);
      5003 : begin
               If PrgSetup.GameDir='' then S:=PrgSetup.BaseDir else S:=PrgSetup.GameDir;
               ShellExecute(Handle,'explore',PChar(S),nil,PChar(S),SW_SHOW);
             end;
      5005 : begin
               G:=ShowTemplateDialog(self,GameDB,SearchLinkFile,DeleteOnExit);
               LoadSearchLinks;
               UpdateAddFromTemplateMenu;
               if G=nil then exit;
               ListView.Items.Clear;
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
               SelectGame(G);
             end;
      5006 : begin
               ListView.Selected:=nil;
               ListView.Items.Clear;
               ViewFilesFrame.SetGame(nil);
               UninstallMultipleGames(self,GameDB);
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
             end;
      5007 : ShowCreateImageFileDialog(self,True,True);
      5008 : TransferGames(self,GameDB);
      5009 : BuildInstaller(self,GameDB);
      5010 : begin
               If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then G:=nil else G:=TGame(ListView.Selected.Data);
               If not ShowEditMultipleProfilesDialog(self,GameDB) then exit;
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
               SelectGame(G);
             end;
      5011 : ShowCreateISOImageDialog(self,False);
      5012 : ShowCreateISOImageDialog(self,True);
      5013 : ShowWriteIMGImageDialog(self);
      5014 : ShowExpandImageDialog(self);
      5015 : ShowBuildImageFromFolderDialog(self);
      5016 : begin
               St:=CheckGameDB(GameDB);
               try
                 If St.Count=0 then begin
                   MessageDlg(LanguageSetup.MissingFilesOK,mtInformation,[mbOK],0);
                 end else begin
                   ShowInfoTextDialog(self,LanguageSetup.MissingFilesCaption,St);
                 end;
               finally
                 St.Free;
               end;
             end;
      5017 : ShowBuildZipPackagesDialog(self,GameDB);
      5018 : If ShowScanGamesFolderDialog(self,GameDB) then begin
               InitTreeViewForGamesList(TreeView,GameDB);
               TreeViewChange(Sender,TreeView.Selected);
             end;
      5019 : ShowCreateShortcutsDialog(self,GameDB);
      {Help}
      6001 : ShellExecute(Handle,'open',PChar('http:/'+'/www.dosbox.com/wiki/'),nil,nil,SW_SHOW);
      6002 : ShellExecute(Handle,'open',PChar('http:/'+'/www.dosbox.com/wiki/Special_Keys'),nil,nil,SW_SHOW);
      6003 : If FileExists(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName) then begin
               DefaultGame:=TGame.Create(PrgSetup);
               try
                 RunCommand(DefaultGame,'intro special',True);
               finally
                 DefaultGame.Free;
               end;
             end else begin
               MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName]),mtError,[mbOK],0);
             end;
      6004 : ShellExecute(Handle,'open',PChar('http:/'+'/www.dosbox.com/comp_list.php?letter=a'),nil,nil,SW_SHOW);
      6005 : ShellExecute(Handle,'open',PChar('http:/'+'/pain.scene.org/service_dosbox.php'),nil,nil,SW_SHOW);
      6006 : ShellExecute(Handle,'open',PChar('http:/'+'/dosbox.sourceforge.net/oldwiki/index.php?page=CommandLine'),nil,nil,SW_SHOW);
      6007 : If FileExists(IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName) then begin
               DefaultGame:=TGame.Create(PrgSetup);
               try
                 RunCommand(DefaultGame,'intro',True);
               finally
                 DefaultGame.Free;
               end;
             end else begin
               MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[IncludeTrailingPathDelimiter(PrgSetup.DOSBoxSettings[0].DosBoxDir)+DosBoxFileName]),mtError,[mbOK],0);
             end;
      6008 : ShellExecute(Handle,'open',PChar(LanguageSetup.MenuHelpHomepageURL),nil,nil,SW_SHOW);
      6009 : {ShellExecute(Handle,'open',PChar('http:/'+'/vogons.zetafleet.com/viewtopic.php?t=17415'),nil,nil,SW_SHOW);}
             Application.HelpCommand(HELP_CONTEXT,ID_HelpForum);
      6010 : If FileExists(PrgDir+'UpdateCheck.exe') or FileExists(PrgDir+BinFolder+'\'+'UpdateCheck.exe')
               then RunUpdateCheck(False)
               else ShellExecute(Handle,'open',PChar(LanguageSetup.MenuHelpUpdatesURL),nil,nil,SW_SHOW);
      6011 : Application.HelpCommand(HELP_CONTEXT,ID_FAQs);
      6012 : If FileExists(PrgDataDir+SettingsFolder+'\'+IconsConfFile)
               then OpenFileInEditor(PrgDataDir+SettingsFolder+'\'+IconsConfFile)
               else MessageDlg(Format(LanguageSetup.MessageCouldNotFindFile,[PrgDataDir+SettingsFolder+'\'+IconsConfFile]),mtError,[mbOK],0);
      6013 : begin
               if not ShowLanguageEditorStartDialog(self,S) then exit;
               ShowLanguageEditorDialog(self,S);
               If Trim(ExtUpperCase(S))=Trim(ExtUpperCase(LanguageSetup.SetupFile)) then begin
                 LanguageSetup.ReloadINI;
                 LoadLanguage(PrgSetup.Language);
                 LoadMenuLanguage;
                 If SearchEdit.Font.Color=clGray then begin
                   SearchEdit.OnChange:=nil;
                   SearchEdit.Text:=LanguageSetup.Search;
                   SearchEdit.OnChange:=SearchEditChange;
                 end;
                 LoadGUISetup(False);
               end;
             end;
      6014 : ShowStatisticsDialog(self,GameDB);
      6015 : ShowInfoDialog(self);
      6016 : ShellExecute(Handle,'open',PChar('http:/'+'/www.dosbox.com/'),nil,nil,SW_SHOW);
      6017 : If (Trim(PrgSetup.ScummVMPath)<>'') and FileExists(IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)+'Readme.txt')
               then OpenFileInEditor(IncludeTrailingPathDelimiter(PrgSetup.ScummVMPath)+'Readme.txt')
               else ShellExecute(Handle,'open',PChar('http:/'+'/www.scummvm.org/documentation.php'),nil,nil,SW_SHOW);
      6018 : ShellExecute(Handle,'open',PChar('http:/'+'/www.scummvm.org/faq.php'),nil,nil,SW_SHOW);
      6019 : ShellExecute(Handle,'open',PChar('http:/'+'/www.scummvm.org/'),nil,nil,SW_SHOW);
      6020 : ShellExecute(Handle,'open',PChar('http:/'+'/www.scummvm.org/compatibility.php'),nil,nil,SW_SHOW);
      6021 : ShowListScummVMGamesDialog(self);
      6022 : ShowOperationModeInfoDialog(self);
      6023 : MessageDlg(LanguageSetup.MenuHelpMakeAutoSetupTemplatesInfo,mtInformation,[mbOK],0);
      6024 : Application.HelpCommand(HELP_CONTEXT,ID_Menu);
      6025 : Application.HelpCommand(HELP_CONTEXT,ID_Index);
      6026 : Application.HelpCommand(HELP_CONTEXT,ID_Introduction);
      6027 : Application.HelpCommand(HELP_CONTEXT,ID_Introduction2);
      6101 : OpenFileInEditor(PrgSetup.DOSBoxSettings[0].DosBoxDir+RemoveUnderline((Sender as TMenuItem).Caption));
      6102 : If Trim((Sender as TMenuItem).Hint)<>'' then begin
               If not OldGamesMenuUsed then begin
                 MessageDlg(LanguageSetup.MenuHelpAbandonwareInfo,mtInformation,[mbOK],0);
                 OldGamesMenuUsed:=True;
               end;
               ShellExecute(Handle,'open',PChar((Sender as TMenuItem).Hint),nil,nil,SW_SHOW);
             end;
      6103 : If HelpMenuLinkFile.EditFile(True) then LoadAbandonLinks;
    end;
  finally
    StartCaptureChangeNotify;
  end;
end;

procedure TDFendReloadedMainForm.TrayIconPopupClick(Sender: TObject);
begin
  Case (Sender as TComponent).Tag of
    0 : TrayIconDblClick(Sender);
    1 : begin TrayIconDblClick(Sender); MenuWork(MenuProfileAdd); end;
    2 : begin TrayIconDblClick(Sender); MenuWork(MenuProfileAddScummVM); end;
    3 : begin TrayIconDblClick(Sender); MenuWork(MenuProfileAddWithWizard); end;
    4 : Close;
    5 : ShowMiniRunDialog(self,GameDB);
    6 : begin TrayIconDblClick(Sender); MenuWork(MenuProfileAddWindows); end;
  end;
end;

Procedure TDFendReloadedMainForm.RunUpdateCheck(const Quite : Boolean);
Var St : TStringList;
    FileName,Add : String;
begin
  FileName:=TempDir+'UpdateCheckSetup.txt';

  St:=TStringList.Create;
  try
    St.Add(GetNormalFileVersionAsString);
    If PrgSetup.VersionSpecificUpdateCheck then Add:='?Version='+GetNormalFileVersionAsString else Add:='';
    St.Add(PrgSetup.UpdateCheckURL+Add);
    St.Add('DFendReloadedUpdate.exe');
    St.Add(PrgDir);
    If Quite then St.Add('silent') else St.Add('normal');
    St.Add(LanguageSetup.UpdateCannotFindFile);
    St.Add(LanguageSetup.UpdateDownloadFailed);
    St.Add(LanguageSetup.UpdateURL);
    St.Add(LanguageSetup.UpdateDownloading);
    St.Add(LanguageSetup.UpdateConnecting);
    St.Add(LanguageSetup.UpdateFileName);
    St.Add(LanguageSetup.UpdateTransfered);
    St.Add(LanguageSetup.UpdateFileSize);
    St.Add(LanguageSetup.UpdateRamainingTime);
    St.Add(LanguageSetup.UpdateTotalTime);
    St.Add(LanguageSetup.UpdateCannotReadFile);
    St.Add(LanguageSetup.UpdateNoUpdates);
    St.Add(LanguageSetup.UpdateNewVersionPart1);
    St.Add(LanguageSetup.UpdateNewVersionPart2);
    St.Add(LanguageSetup.OK);
    St.Add(LanguageSetup.Yes);
    St.Add(LanguageSetup.No);

    St.SaveToFile(FileName);
  finally
    St.Free;
  end;

  If FileExists(PrgDir+'UpdateCheck.exe') then begin
    ShellExecute(Handle,'open',PChar(PrgDir+'UpdateCheck.exe'),PChar(FileName),PChar(PrgDir),SW_SHOW);
  end else begin
    If FileExists(PrgDir+BinFolder+'\'+'UpdateCheck.exe') then begin
      ShellExecute(Handle,'open',PChar(PrgDir+BinFolder+'\'+'UpdateCheck.exe'),PChar(FileName),PChar(PrgDir),SW_SHOW);
    end;
  end;

  If DeleteOnExit.IndexOf(FileName)<0 then DeleteOnExit.Add(FileName);

  PrgSetup.LastUpdateCheck:=Round(Date);
end;

Procedure TDFendReloadedMainForm.AddFromTemplateClick(Sender: TObject);
begin
  If (Sender as TMenuItem).Parent=TrayIconPopupAddFromTemplate then TrayIconDblClick(Sender);
  AddProfile('','',(Sender as TComponent).Tag);
end;

procedure TDFendReloadedMainForm.ScreenshotListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
Var B : Boolean;
    S : String;
begin
  B:=(Item<>nil);

  ScreenshotPopupOpen.Enabled:=B;
  ScreenshotPopupOpenExternal.Enabled:=B;
  ScreenshotPopupCopy.Enabled:=B;
  ScreenshotPopupSave.Enabled:=B;
  ScreenshotPopupRename.Enabled:=B;
  ScreenshotPopupDelete.Enabled:=B;
  ScreenshotPopupDeleteAll.Enabled:=B;
  ScreenshotPopupUseAsBackground.Enabled:=B;
  ScreenshotPopupUseInScreenshotList.Enabled:=B;
  If not ScreenshotPopupUseInScreenshotList.Enabled then ScreenshotPopupUseInScreenshotList.Checked:=False else begin
    ScreenshotPopupUseInScreenshotList.Checked:=(ScreenshotListView.Selected<>nil) and (ListView.Selected<>nil) and ((Trim(ExtUpperCase(ScreenshotListView.Selected.Caption))=Trim(ExtUpperCase(TGame(ListView.Selected.Data).ScreenshotListScreenshot))));
  end;

  S:=Trim(ExtUpperCase(PrgSetup.ImageViewer));
  ScreenshotPopupOpenExternal.Visible:=(S='') or (S='INTERNAL');
end;

procedure TDFendReloadedMainForm.SoundListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
Var B : Boolean;
    S : String;
    I : Integer;
begin
  B:=(Item<>nil);

  If B then S:=ExtUpperCase(ExtractFileExt(Item.Caption)) else S:='';

  SoundPopupOpen.Enabled:=B;
  SoundPopupOpenExternal.Enabled:=B;
  SoundPopupSave.Enabled:=B;
  SoundPopupSaveMp3.Enabled:=B and (S='.WAV') and FileExists(PrgSetup.WaveEncMp3);
  SoundPopupSaveOgg.Enabled:=B and (S='.WAV') and FileExists(PrgSetup.WaveEncOgg);
  SoundPopupRename.Enabled:=B;
  SoundPopupDelete.Enabled:=B;
  SoundPopupDeleteAll.Enabled:=B;

  B:=False;
  For I:=0 to SoundListView.Items.Count-1 do If ExtUpperCase(ExtractFileExt(SoundListView.Items[I].Caption))='.WAV' then begin B:=True; break; end;
  SoundPopupSaveMp3All.Enabled:=B and FileExists(PrgSetup.WaveEncMp3);
  SoundPopupSaveOggAll.Enabled:=B and FileExists(PrgSetup.WaveEncOgg);

  S:=Trim(ExtUpperCase(PrgSetup.SoundPlayer));
  SoundPopupOpenExternal.Visible:=(S='') or (S='INTERNAL');
end;

procedure TDFendReloadedMainForm.VideoListViewSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
Var B : Boolean;
    S : String;
begin
  B:=(Item<>nil);

  VideoPopupOpen.Enabled:=B;
  VideoPopupOpenExternal.Enabled:=B;
  VideoPopupSave.Enabled:=B;
  VideoPopupRename.Enabled:=B;
  VideoPopupDelete.Enabled:=B;
  VideoPopupDeleteAll.Enabled:=B;

  S:=Trim(ExtUpperCase(PrgSetup.VideoPlayer));
  VideoPopupOpenExternal.Visible:=(S='') or (S='INTERNAL');
end;

procedure TDFendReloadedMainForm.ScreenshotListViewDblClick(Sender: TObject);
begin
  ScreenshotMenuWork(ScreenshotPopupOpen);
end;

procedure TDFendReloadedMainForm.SoundListViewDblClick(Sender: TObject);
begin
  SoundMenuWork(SoundPopupOpen);
end;

procedure TDFendReloadedMainForm.VideoListViewDblClick(Sender: TObject);
begin
  VideoMenuWork(VideoPopupOpen);
end;

procedure TDFendReloadedMainForm.ScreenshotListViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Shift=[ssShift]) and (Key=VK_DELETE) then begin ScreenshotMenuWork(ScreenshotPopupDeleteAll); exit; end;
  If (Shift=[ssCtrl]) and (Key=ord('C')) then begin ScreenshotMenuWork(ScreenshotPopupCopy); exit; end;
  If Shift<>[] then exit;
  Case Key of
    VK_RETURN : ScreenshotMenuWork(ScreenshotPopupOpen);
    VK_INSERT : ScreenshotMenuWork(ScreenshotPopupImport);
    VK_F5 : ScreenshotMenuWork(ScreenshotPopupRefresh);
    VK_DELETE : ScreenshotMenuWork(ScreenshotPopupDelete);
  end;
end;

procedure TDFendReloadedMainForm.SoundListViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Shift=[ssShift]) and (Key=VK_DELETE) then begin SoundMenuWork(SoundPopupDeleteAll); exit; end;
  If (Shift=[ssShift]) and (Key=VK_RETURN) then begin SoundMenuWork(SoundPopupOpenExternal); exit; end;
  If Shift<>[] then exit;
  Case Key of
    VK_RETURN : SoundMenuWork(SoundPopupOpen);
    VK_INSERT : SoundMenuWork(SoundPopupImport);
    VK_F5 : SoundMenuWork(SoundPopupRefresh);
    VK_DELETE : SoundMenuWork(SoundPopupDelete);
  end;
end;

procedure TDFendReloadedMainForm.VideoListViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Shift=[ssShift]) and (Key=VK_DELETE) then begin VideoMenuWork(VideoPopupDeleteAll); exit; end;
  If (Shift=[ssShift]) and (Key=VK_RETURN) then begin VideoMenuWork(VideoPopupOpenExternal); exit; end;
  If Shift<>[] then exit;
  Case Key of
    VK_RETURN : VideoMenuWork(VideoPopupOpen);
    VK_INSERT : VideoMenuWork(VideoPopupImport);
    VK_F5 : VideoMenuWork(VideoPopupRefresh);
    VK_DELETE : VideoMenuWork(VideoPopupDelete);
  end;
end;

procedure TDFendReloadedMainForm.ScreenshotMenuWork(Sender: TObject);
Var S,T : String;
    I : Integer;
    P : TPicture;
    G : TGame;
    WPStype : TWallpaperStyle;
    St1, St2 : TStringList;
begin
  Case (Sender as TComponent).Tag of
    0 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          St1:=TStringList.Create;
          St2:=TStringList.Create;
          try
            For I:=0 to ScreenshotListView.Items.Count-1 do begin
              If I<ScreenshotListView.Selected.Index then St1.Add(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Items[I].Caption);
              If I>ScreenshotListView.Selected.Index then St2.Add(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Items[I].Caption);
            end;
            ShowImageDialog(self,IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption,St1,St2);
          finally
            St1.Free;
            St2.Free;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    1 : ListViewSelectItem(Sender,ListView.Selected,True);
    2 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          P:=LoadImageFromFile(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption);
          try
            Clipboard.Assign(P);
          finally
            P.Free;
          end;
        end;
    3 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          ScreenshotSaveDialog.FileName:='';
          ScreenshotSaveDialog.Title:=LanguageSetup.ViewImageFormSaveTitle;
          ScreenshotSaveDialog.Filter:=LanguageSetup.ViewImageFormSaveFilter;
          if not ScreenshotSaveDialog.Execute then exit;
          SaveImageToFile(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption,ScreenshotSaveDialog.FileName);
        end;
    4 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption,ftMediaViewer) then
            Messagedlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    5 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          For I:=0 to ScreenshotListView.Items.Count-1 do if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Items[I].Caption,ftMediaViewer) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+ScreenshotListView.Items[I].Caption]),mtError,[mbOK],0);
            break;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    6 : begin
          If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
            MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
          end;
          G:=TGame(ListView.Selected.Data);
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          OpenDialog.Title:=LanguageSetup.ScreenshotPopupImportTitle;
          OpenDialog.Filter:=LanguageSetup.ScreenshotPopupImportFilter;
          If not OpenDialog.Execute then exit;
          S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(OpenDialog.FileName);
          if not CopyFile(PChar(OpenDialog.FileName),PChar(S),True) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[OpenDialog.FileName,S]),mtError,[mbOK],0);
            exit;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    7 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          If not ShowWallpaperStyleDialog(self,WPStype) then exit;
          SetDesktopWallpaper(IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption,WPStype);
        end;
    8 : If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
            S:=IncludeTrailingPathDelimiter(S);
          T:=ChangeFileExt(ScreenshotListView.Selected.Caption,'');
          If not InputQuery(LanguageSetup.ScreenshotPopupRenameCaption,LanguageSetup.ScreenshotPopupRenameLabel,T) then exit;
          T:=T+ExtractFileExt(ScreenshotListView.Selected.Caption);
          If not RenameFile(S+ScreenshotListView.Selected.Caption,S+T) then
            MessageDlg(Format(LanguageSetup.MessageCouldNotRenameFile,[S+ScreenshotListView.Selected.Caption,S+T]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
          T:=Trim(ExtUpperCase(T));
          For I:=0 to ScreenshotListView.Items.Count-1 do
            If Trim(ExtUpperCase(ScreenshotListView.Items[I].Caption))=T then begin
            ScreenshotListView.Selected:=ScreenshotListView.Items[I];
            break;
          end;
          ScreenshotListViewSelectItem(Sender,ScreenshotListView.Selected,ScreenshotListView.Selected<>nil);
        end;
    9 : If (ScreenshotListView.Selected<>nil) and (ListView.Selected<>nil) then begin
          S:=ScreenshotListView.Selected.Caption;
          If Trim(ExtUpperCase(S))=Trim(ExtUpperCase(TGame(ListView.Selected.Data).ScreenshotListScreenshot))
          then TGame(ListView.Selected.Data).ScreenshotListScreenshot:=''
          else TGame(ListView.Selected.Data).ScreenshotListScreenshot:=S;
          TreeViewChange(Sender,TreeView.Selected);
        end;
    10: If ScreenshotListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          T:=Trim(ExtUpperCase(PrgSetup.ImageViewer));
          If (T<>'') and (T<>'INTERNAL') then begin
            ShowImageDialog(self,IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption,nil,nil);
            exit;
          end;
          ShellExecute(Handle,'open',PChar('"'+IncludeTrailingPathDelimiter(S)+ScreenshotListView.Selected.Caption+'"'),nil,nil,SW_SHOW);
        end;
  end;
end;

procedure TDFendReloadedMainForm.SoundMenuWork(Sender: TObject);
Var S,T : String;
    G : TGame;
    I : Integer;
    SaveDialog : TSaveDialog;
    St1,St2 : TStringList;
begin
  Case (Sender as TComponent).Tag of
    0 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          St1:=TStringList.Create;
          St2:=TStringList.Create;
          try
            For I:=0 to SoundListView.Items.Count-1 do begin
              If (I<SoundListView.Selected.Index) then St1.Add(IncludeTrailingPathDelimiter(S)+SoundListView.Items[I].Caption);
              If (I>SoundListView.Selected.Index) then St2.Add(IncludeTrailingPathDelimiter(S)+SoundListView.Items[I].Caption);
            end;
            PlaySoundDialog(self,IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption,St1,St2);
          finally
            St1.Free;
            St2.Free;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    1 : ListViewSelectItem(Sender,ListView.Selected,True);
    2 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          T:=Trim(ExtUpperCase(PrgSetup.SoundPlayer));
          If (T<>'') and (T<>'INTERNAL') then begin
            PlaySoundDialog(self,IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption,nil,nil);
            exit;
          end;
          ShellExecute(Handle,'open',PChar('"'+IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption+'"'),nil,nil,SW_SHOW);
        end;
    3 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption;
          SaveDialog:=TSaveDialog.Create(self);
          try
            T:=ExtractFileExt(S);
            If (T<>'') and (T[1]='.') then T:=Copy(T,2,MaxInt);
            SaveDialog.DefaultExt:=T;
            SaveDialog.FileName:='';
            SaveDialog.Title:=LanguageSetup.SoundCaptureSaveTitle;
            T:=Trim(ExtUpperCase(T));
            SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveWAVFilter;
            If T='MP3' then SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveMP3Filter;
            If T='OGG' then SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveOGGFilter;
            If (T='MID') or (T='MIDI') then SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveMIDFilter;
            If not SaveDialog.Execute then exit;
            T:=SaveDialog.FileName;
            If not CopyFile(PChar(S),PChar(T),True) then MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[S,T]),mtError,[mbOK],0);
          finally
            SaveDialog.Free;
          end;
        end;
    4 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption;
          SaveDialog:=TSaveDialog.Create(self);
          try
            SaveDialog.DefaultExt:='mp3';
            SaveDialog.FileName:='';
            SaveDialog.Title:=LanguageSetup.SoundCaptureSaveTitle;
            SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveMP3Filter;
            If not SaveDialog.Execute then exit;
            T:=SaveDialog.FileName;
            ShellExecute(Handle,'open',PChar(PrgSetup.WaveEncMp3),PChar(ProcessEncoderParameters(PrgSetup.WaveEncMp3Parameters,S,T)),nil,SW_SHOW);
          finally
            SaveDialog.Free;
          end;
        end;
    5 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption;
          SaveDialog:=TSaveDialog.Create(self);
          try
            SaveDialog.DefaultExt:='ogg';
            SaveDialog.FileName:='';
            SaveDialog.Title:=LanguageSetup.SoundCaptureSaveTitle;
            SaveDialog.Filter:=LanguageSetup.SoundCaptureSaveOGGFilter;
            If not SaveDialog.Execute then exit;
            T:=SaveDialog.FileName;
            ShellExecute(Handle,'open',PChar(PrgSetup.WaveEncOgg),PChar(ProcessEncoderParameters(PrgSetup.WaveEncOggParameters,S,T)),nil,SW_SHOW);
          finally
            SaveDialog.Free;
          end;
        end;
    6 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption,ftMediaViewer) then
            Messagedlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+SoundListView.Selected.Caption]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    7 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          For I:=0 to SoundListView.Items.Count-1 do if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+SoundListView.Items[I].Caption,ftMediaViewer) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+SoundListView.Items[I].Caption]),mtError,[mbOK],0);
            break;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    8 : begin
          If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
            MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
          end;
          G:=TGame(ListView.Selected.Data);
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          OpenDialog.Title:=LanguageSetup.SoundCaptureImportTitle;
          OpenDialog.Filter:=LanguageSetup.SoundCaptureImportFilter;
          If not OpenDialog.Execute then exit;
          S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(OpenDialog.FileName);
          if not CopyFile(PChar(OpenDialog.FileName),PChar(S),True) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[OpenDialog.FileName,S]),mtError,[mbOK],0);
            exit;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    9 : begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S);
          For I:=0 to SoundListView.Items.Count-1 do If ExtUpperCase(ExtractFileExt(SoundListView.Items[I].Caption))='.WAV' then begin
            T:=SoundListView.Items[I].Caption;
            ShellExecute(Handle,'open',PChar(PrgSetup.WaveEncMp3),PChar(ProcessEncoderParameters(PrgSetup.WaveEncMp3Parameters,S+T,S+ChangeFileExt(T,'.mp3'))),nil,SW_SHOW);
          end;
        end;
   10 : begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S);
          For I:=0 to SoundListView.Items.Count-1 do If ExtUpperCase(ExtractFileExt(SoundListView.Items[I].Caption))='.WAV' then begin
            T:=SoundListView.Items[I].Caption;
            ShellExecute(Handle,'open',PChar(PrgSetup.WaveEncOgg),PChar(ProcessEncoderParameters(PrgSetup.WaveEncOggParameters,S+T,S+ChangeFileExt(T,'.ogg'))),nil,SW_SHOW);
          end;
        end;
   11 : If SoundListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S);
          T:=ChangeFileExt(SoundListView.Selected.Caption,'');
          If not InputQuery(LanguageSetup.ScreenshotPopupRenameCaption,LanguageSetup.ScreenshotPopupRenameLabel,T) then exit;
          T:=T+ExtractFileExt(SoundListView.Selected.Caption);
          If not RenameFile(S+SoundListView.Selected.Caption,S+T) then
            MessageDlg(Format(LanguageSetup.MessageCouldNotRenameFile,[S+SoundListView.Selected.Caption,S+T]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
          T:=Trim(ExtUpperCase(T));
          For I:=0 to SoundListView.Items.Count-1 do
            If Trim(ExtUpperCase(SoundListView.Items[I].Caption))=T then begin
            SoundListView.Selected:=SoundListView.Items[I];
            break;
          end;
          SoundListViewSelectItem(Sender,SoundListView.Selected,SoundListView.Selected<>nil);
        end;
  end;
end;

procedure TDFendReloadedMainForm.VideoMenuWork(Sender: TObject);
Var S,T : String;
    G : TGame;
    I : Integer;
    SaveDialog : TSaveDialog;
    St1,St2 : TStringList;
begin
  Case (Sender as TComponent).Tag of
    0 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          St1:=TStringList.Create;
          St2:=TStringList.Create;
          try
            For I:=0 to VideoListView.Items.Count-1 do begin
              If I<VideoListView.Selected.Index then St1.Add(IncludeTrailingPathDelimiter(S)+VideoListView.Items[I].Caption);
              If I>VideoListView.Selected.Index then St2.Add(IncludeTrailingPathDelimiter(S)+VideoListView.Items[I].Caption);
            end;
            PlayVideoDialog(self,IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption,St1,St2);
          finally
            St1.Free;
            St2.Free;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    1 : ListViewSelectItem(Sender,ListView.Selected,True);
    2 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          T:=Trim(ExtUpperCase(PrgSetup.VideoPlayer));
          If (T<>'') and (T<>'INTERNAL') then begin
            PlayVideoDialog(self,IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption,nil,nil);
            exit;
          end;
          ShellExecute(Handle,'open',PChar('"'+IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption+'"'),nil,nil,SW_SHOW);
        end;
    3 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption;
          SaveDialog:=TSaveDialog.Create(self);
          try
            T:=ExtractFileExt(S);
            If (T<>'') and (T[1]='.') then T:=Copy(T,2,MaxInt);
            SaveDialog.DefaultExt:=T;
            SaveDialog.FileName:='';
            SaveDialog.Title:=LanguageSetup.VideoCaptureSaveTitle;
            SaveDialog.Filter:=LanguageSetup.VideoCaptureSaveFilter;
            If not SaveDialog.Execute then exit;
            T:=SaveDialog.FileName;
            If not CopyFile(PChar(S),PChar(T),True) then MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[S,T]),mtError,[mbOK],0);
          finally
            SaveDialog.Free;
          end;
        end;
    6 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption,ftMediaViewer) then
            Messagedlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+VideoListView.Selected.Caption]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    7 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          For I:=0 to VideoListView.Items.Count-1 do if not ExtDeleteFile(IncludeTrailingPathDelimiter(S)+VideoListView.Items[I].Caption,ftMediaViewer) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotDeleteDir,[IncludeTrailingPathDelimiter(S)+VideoListView.Items[I].Caption]),mtError,[mbOK],0);
            break;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
    8 : begin
          If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then begin
            MessageDlg(LanguageSetup.MessageNoGameSelected,mtError,[mbOK],0); exit;
          end;
          G:=TGame(ListView.Selected.Data);
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          OpenDialog.Title:=LanguageSetup.VideoCaptureImportTitle;
          OpenDialog.Filter:=LanguageSetup.VideoCaptureImportFilter;
          If not OpenDialog.Execute then exit;
          S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(OpenDialog.FileName);
          if not CopyFile(PChar(OpenDialog.FileName),PChar(S),True) then begin
            MessageDlg(Format(LanguageSetup.MessageCouldNotCopyFile,[OpenDialog.FileName,S]),mtError,[mbOK],0);
            exit;
          end;
          ListViewSelectItem(Sender,ListView.Selected,True);
        end;
   11 : If VideoListView.Selected<>nil then begin
          S:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
          If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
          If S='' then exit;
          S:=IncludeTrailingPathDelimiter(S);
          T:=ChangeFileExt(VideoListView.Selected.Caption,'');
          If not InputQuery(LanguageSetup.ScreenshotPopupRenameCaption,LanguageSetup.ScreenshotPopupRenameLabel,T) then exit;
          T:=T+ExtractFileExt(VideoListView.Selected.Caption);
          If not RenameFile(S+VideoListView.Selected.Caption,S+T) then
            MessageDlg(Format(LanguageSetup.MessageCouldNotRenameFile,[S+VideoListView.Selected.Caption,S+T]),mtError,[mbOK],0);
          ListViewSelectItem(Sender,ListView.Selected,True);
          T:=Trim(ExtUpperCase(T));
          For I:=0 to VideoListView.Items.Count-1 do
            If Trim(ExtUpperCase(VideoListView.Items[I].Caption))=T then begin
            VideoListView.Selected:=VideoListView.Items[I];
            break;
          end;
          VideoListViewSelectItem(Sender,VideoListView.Selected,VideoListView.Selected<>nil);
        end;
  end;
end;

procedure TDFendReloadedMainForm.TreeViewPopupEditUserFiltersClick(Sender: TObject);
Var S,T : String;
begin
  S:=GamesListSaveColWidthsToString(ListView);
  T:=GetUserCols;
  if not ShowTreeListSetupDialog(self,GameDB) then exit;
  AfterSetupDialog(S,T);
end;

procedure TDFendReloadedMainForm.ToolbarPopupClick(Sender: TObject);
Var S,T : String;
begin
  S:=GamesListSaveColWidthsToString(ListView);
  T:=GetUserCols;
  Case (Sender as TComponent).Tag of
    0 : if not ShowToolbarSetupDialog(self,GameDB) then exit;
    1 : if not ShowIconSetSetupDialog(self,GameDB) then exit;
  End;
  AfterSetupDialog(S,T);
end;

procedure TDFendReloadedMainForm.IdleAddonTimerTimer(Sender: TObject);
Var Done : Boolean;
begin
  Done:=False;
  ApplicationEventsIdle(Sender,Done);
end;

procedure TDFendReloadedMainForm.ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
begin
  If DOSBoxCounter.Count>LastDOSBoxCount then begin
    LastTop:=Top;
    LastLeft:=Left;
    LastDOSBoxCount:=DOSBoxCounter.Count;
  end;

  If PrgSetup.MinimizeOnDosBoxStart and PrgSetup.RestoreWhenDOSBoxCloses and (WindowState=wsMinimized) and MinimizedAtDOSBoxStart then begin
    If DOSBoxCounter.Count>0 then exit;
    MinimizedAtDOSBoxStart:=False;
    If PrgSetup.MinimizeToTray then begin
      TrayIconDblClick(Sender);
    end else begin
      Application.Restore;
    end;
  end;

  If PrgSetup.MinimizeOnScummVMStart and PrgSetup.RestoreWhenScummVMCloses and (WindowState=wsMinimized) and MinimizedAtScummVMStart then begin
    If ScummVMCounter.Count>0 then exit;
    MinimizedAtScummVMStart:=False;
    If PrgSetup.MinimizeToTray then begin
      TrayIconDblClick(Sender);
    end else begin
      Application.Restore;
    end;
  end;

  If PrgSetup.MinimizeOnWindowsGameStart and PrgSetup.RestoreWhenWindowsGameCloses and (WindowState=wsMinimized) and MinimizedAtWindowsGameStart then begin
    If WindowsGameCounter.Count>0 then exit;
    MinimizedAtWindowsGameStart:=False;
    If Now-MinimizedAtWindowsGameStartTime<5/86400 then exit;
    If PrgSetup.MinimizeToTray then begin
      TrayIconDblClick(Sender);
    end else begin
      Application.Restore;
    end;
  end;

  If FileConflictCheckRunning then exit;
  FileConflictCheckRunning:=True;
  try
    If (hScreenshotsChangeNotification<>INVALID_HANDLE_VALUE) and (WaitForSingleObject(hScreenshotsChangeNotification,0)=WAIT_OBJECT_0) then begin
      UpdateScreenshotList;
      PictureCache.Clear;
      FindNextChangeNotification(hScreenshotsChangeNotification);
    end;

    If (hConfsChangeNotification<>INVALID_HANDLE_VALUE) and (WaitForSingleObject(hConfsChangeNotification,0)=WAIT_OBJECT_0) then begin
      ConfFileCheck;
      FindNextChangeNotification(hConfsChangeNotification);
    end;
  finally
    FileConflictCheckRunning:=False;
  end;
end;

procedure TDFendReloadedMainForm.FormResize(Sender: TObject);
begin
  If (WindowState=wsMinimized) or (WindowState=wsMaximized) then exit;
  If (BoundsRect.Left<0) and (BoundsRect.Top<0) and (BoundsRect.Right>=Screen.WorkAreaWidth-2) and (BoundsRect.Bottom>=Screen.WorkAreaHeight-2) then exit;

  SaveBoundsRect:=BoundsRect;
  SaveMaximizedState:=(WindowState=wsMaximized);

  If Assigned(ListView) then ListView.Arrange(arAlignLeft);
  If Assigned(ScreenshotListView) then ScreenshotListView.Arrange(arAlignLeft);
  If Assigned(SoundListView) then SoundListView.Arrange(arAlignLeft);
  If Assigned(VideoListView) then VideoListView.Arrange(arAlignLeft);
end;

procedure TDFendReloadedMainForm.ApplicationEventsMinimize(Sender: TObject);
begin
  If PrgSetup.MinimizeToTray then begin
    TrayIcon.Visible:=True;
    If Assigned(QuickStartForm) then QuickStartForm.Visible:=False;    
    Visible:=False;
  end;

  SetProcessWorkingSetSize(GetCurrentProcess,$ffffffff,$ffffffff);
end;

procedure TDFendReloadedMainForm.ApplicationEventsRestore(Sender: TObject);
begin
  If PrgSetup.MinimizeToTray then begin
    TrayIcon.Visible:=False;
    Visible:=True;
  end;
  ForceForegroundWindow(Application.Handle);
  Application.BringToFront;
  if (not SaveMaximizedState) and (WindowState<>wsMaximized)
  then BoundsRect:=SaveBoundsRect;
end;

procedure TDFendReloadedMainForm.TrayIconDblClick(Sender: TObject);
begin
  Application.Restore;
  If StartTrayMinimize then begin
    StartTrayMinimize:=False;
    Application.ProcessMessages;
    ApplicationEventsRestore(Sender);
    WindowState:=wsNormal;
  end;
end;

procedure TDFendReloadedMainForm.CapturePageControlChange(Sender: TObject);
begin
  If CapturePageControl.ActivePageIndex=3 then begin
    If ListView.Selected<>nil then begin
      ViewFilesFrame.Visible:=False;
      ViewFilesFrame.Visible:=True;
      ViewFilesFrame.SetGame(TGame(ListView.Selected.Data));
    end else begin
      ViewFilesFrame.Visible:=False;
    end;
  end;
end;

Procedure TDFendReloadedMainForm.ConfFileCheck;
Var I : Integer;
    St,St2 : TStringList;
    G,Game : TGame;
    Rec : TSearchRec;
    NeedListUpdate : Boolean;
begin
  St:=TStringList.Create;
  St2:=TStringList.Create;
  try
    For I:=0 to GameDB.Count-1 do Case GameDB[I].CheckAndUpdateTimeStamp of
      fcsChanged : St.AddObject(GameDB[I].CacheName,GameDB[I]);
      fcsDeleted : St2.AddObject(GameDB[I].CacheName,GameDB[I]);
    end;
    If (St.Count>0) or (St2.Count>0) then begin
      G:=nil; if ListView.Selected<>nil then G:=TGame(ListView.Selected.Data);
      If St2.Count>0 then ListView.Items.Clear;
      If St.Count>0 then ShowCacheChooseDialog(self,St,GameDB);
      If St2.Count>0 then ShowRestoreDeletedDialog(self,St2,GameDB);
      InitTreeViewForGamesList(TreeView,GameDB);
      TreeViewChange(self,TreeView.Selected);
      SelectGame(G);
    end;
  finally
    St.Free;
    St2.Free;
  end;

  St:=TStringList.Create;
  try
    For I:=0 to GameDB.Count-1 do St.Add(Trim(ExtUpperCase(ExtractFileName(GameDB[I].SetupFile))));
    NeedListUpdate:=False;
    G:=nil; if ListView.Selected<>nil then G:=TGame(ListView.Selected.Data);
    I:=FindFirst(PrgDataDir+GameListSubDir+'\*.prof',faAnyFile,Rec);
    try
      while I=0 do begin
        If St.IndexOf(Trim(ExtUpperCase(Rec.Name)))<0 then begin
          Game:=TGame.Create(PrgDataDir+GameListSubDir+'\'+Rec.Name);
          GameDB.Add(Game);
          NeedListUpdate:=True;
        end;
        I:=FindNext(Rec);
      end;
    finally
      FindClose(Rec);
    end;
    If NeedListUpdate then begin
      InitTreeViewForGamesList(TreeView,GameDB);
      TreeViewChange(self,TreeView.Selected);
      SelectGame(G);
    end;
  finally
    St.Free;
  end;
end;

Procedure TDFendReloadedMainForm.DropImportFile(const FileName: String; var ErrorCode : String);
Var FileExt : String;
    G : TGame;
    S : String;
    B : Boolean;
begin
  ErrorCode:='';

  FileExt:=Trim(ExtUpperCase(ExtractFileExt(FileName)));
  G:=nil; If ListView.Selected<>nil then G:=TGame(ListView.Selected.Data);

  if DirectoryExists(FileName) and (G<>nil) then begin
    If (Trim(G.DataDir)<>'') and DirectoryExists(MakeAbsPath(G.DataDir,PrgSetup.BaseDir)) then begin
      S:=IncludeTrailingPathDelimiter(MakeAbsPath(G.DataDir,PrgSetup.BaseDir))+ExtractFileName(FileName);
      If not ForceDirectories(S) then begin
        ErrorCode:=Format(LanguageSetup.MessageCouldNotCreateDir,[S]);
        exit;
      end;
      If not CopyFiles(FileName,S,True) then
        ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFiles,[FileName,S]);
      exit;
    end;
  end;

  If FileExt='.CONF' then begin
    G:=ImportConfFile(GameDB,FileName);
    If G=nil then exit;
    InitTreeViewForGamesList(TreeView,GameDB);
    TreeViewChange(nil,TreeView.Selected);
    SelectGame(G);
    exit;
  end;

  If FileExt='.PROF' then begin
    S:=GameDB.ProfFileName(ExtractFileName(FileName),True);
    if not CopyFile(PChar(FileName),PChar(S),True) then begin
      ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFile,[FileName,S]);
      exit;
    end;
    G:=TGame.Create(S);
    GameDB.Add(G);
    InitTreeViewForGamesList(TreeView,GameDB);
    TreeViewChange(nil,TreeView.Selected);
    SelectGame(G);
    exit;
  end;

  If (FileExt='.JPG') or (FileExt='.JPEG') or (FileExt='.PNG') or (FileExt='.GIF') or (FileExt='.BMP') then begin
    If G<>nil then begin
      S:=Trim(G.CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S='' then exit;
      S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(FileName);
      If FileExists(S) then begin
        If MessageDlg(Format(LanguageSetup.MessageConfirmationOverwriteFile,[S]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
      end;
      if not CopyFile(PChar(FileName),PChar(S),False) then
        ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFile,[FileName,S]);
      exit;
    end else begin
      ErrorCode:=Format(LanguageSetup.DragDropErrorNoProfileSelectedForScreenshots,[ExtractFileName(FileName)]);
      exit;
    end;
  end;

  If (FileExt='.WAV') or (FileExt='.MP3') or (FileExt='.OGG') or (FileExt='.MID') or (FileExt='.MIDI') then begin
    If G<>nil then begin
      S:=Trim(G.CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S='' then exit;
      S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(FileName);
      If FileExists(S) then begin
        If MessageDlg(Format(LanguageSetup.MessageConfirmationOverwriteFile,[S]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
      end;
      if not CopyFile(PChar(FileName),PChar(S),False) then ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFile,[FileName,S]);
      exit;
    end else begin
      ErrorCode:=Format(LanguageSetup.DragDropErrorNoProfileSelectedForSoundFiles,[ExtractFileName(FileName)]);
      exit;
    end;
  end;

  If (FileExt='.AVI') or (FileExt='.MPEG') or (FileExt='.MPG') or (FileExt='.WMV') or (FileExt='.ASF') then begin
    If G<>nil then begin
      S:=Trim(G.CaptureFolder);
      If S<>'' then S:=MakeAbsPath(S,PrgSetup.BaseDir);
      If S='' then exit;
      S:=IncludeTrailingPathDelimiter(S)+ExtractFileName(FileName);
      If FileExists(S) then begin
        If MessageDlg(Format(LanguageSetup.MessageConfirmationOverwriteFile,[S]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
      end;
      if not CopyFile(PChar(FileName),PChar(S),False) then ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFile,[FileName,S]);
      exit;
    end else begin
      ErrorCode:=Format(LanguageSetup.DragDropErrorNoProfileSelectedForVideoFiles,[ExtractFileName(FileName)]);
      exit;
    end;
  end;


  If (FileExt='.EXE') or (FileExt='.COM') or (FileExt='.BAT') or (FileExt='.BAS') then begin
    If FileExt='.EXE' then B:=IsWindowsExe(FileName) else B:=False;
    StartWizard(FileName,B);
    exit;
  end;

  If (FileExt='.ZIP') or (FileExt='.7Z') then begin
    G:=ImportZipPackage(self,FileName,GameDB);
    If G=nil then exit;
    InitTreeViewForGamesList(TreeView,GameDB);
    TreeViewChange(self,TreeView.Selected);
    SelectGame(G);
    exit;
  end;

  If G<>nil then begin
    If (Trim(G.DataDir)<>'') and DirectoryExists(MakeAbsPath(G.DataDir,PrgSetup.BaseDir)) then begin
      S:=IncludeTrailingPathDelimiter(MakeAbsPath(G.DataDir,PrgSetup.BaseDir))+ExtractFileName(FileName);
      If FileExists(S) then begin
        If MessageDlg(Format(LanguageSetup.MessageConfirmationOverwriteFile,[S]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
      end;
      if not CopyFile(PChar(FileName),PChar(S),False) then
        ErrorCode:=Format(LanguageSetup.MessageCouldNotCopyFile,[FileName,S]);
      exit;
    end;
  end;

  ErrorCode:=Format(LanguageSetup.DragDropErrorUnknownExtension,[ExtractFileName(FileName)]);
end;

procedure TDFendReloadedMainForm.MainDragDrop(Sender, Source: TObject; X, Y: Integer);
Var FileList, Errors : TStringList;
    I : Integer;
    S : String;
begin
  If (Source=nil) or (not (Source is TStringList)) then exit;
  FileList:=(Source as TStringList);

  Errors:=TStringList.Create;
  try
    For I:=0 to FileList.Count-1 do begin
      S:=''; DropImportFile(FileList[I],S);
      If S<>'' then Errors.Add(S);
    end;
    If Errors.Count>0 then ShowDragNDropErrorDialog(self,Errors);
  finally
    Errors.Free;
  end;
end;

procedure TDFendReloadedMainForm.CaptureDragDrop(Sender, Source: TObject; X, Y: Integer);
Var FileList, Errors : TStringList;
    I : Integer;
    Dir : String;
begin
  If (Source=nil) or (not (Source is TStringList)) then exit;
  FileList:=(Source as TStringList);

  If (ListView.Selected=nil) or (ListView.Selected.Data=nil) then exit;
  Dir:=Trim(TGame(ListView.Selected.Data).CaptureFolder);
  If Dir='' then exit;
  Dir:=IncludeTrailingPathDelimiter(MakeAbsPath(Dir,PrgSetup.BaseDir));
  If not ForceDirectories(Dir) then begin
    MessageDlg(Format(LanguageSetup.MessageCouldNotCreateDir,[Dir]),mtError,[mbOK],0);
    exit;
  end;

  Errors:=TStringList.Create;
  try
    For I:=0 to FileList.Count-1 do begin
      If DirectoryExists(FileList[I]) then begin
        Errors.Add(Format(LanguageSetup.MessageCouldNotCopyDirectoriesToCapture,[FileList[I]]));
        continue;
      end;
      If FileExists(Dir+ExtractFileName(FileList[I])) then begin
        If MessageDlg(Format(LanguageSetup.MessageConfirmationOverwriteFile,[Dir+ExtractFileName(FileList[I])]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then continue;
      end;
      If not CopyFile(PChar(FileList[I]),PChar(Dir+ExtractFileName(FileList[I])),False) then begin
        Errors.Add(Format(LanguageSetup.MessageCouldNotCopyFile,[FileList[I],Dir+ExtractFileName(FileList[I])]));
      end;
    end;
    If Errors.Count>0 then ShowDragNDropErrorDialog(self,Errors);
  finally
    Errors.Free;
  end;
end;

Procedure TDFendReloadedMainForm.WMMove(Var Message : TWMMove);
begin
  If (DOSBoxCounter.Count=0) and (LastDOSBoxCount>0) and (LastTop>=0) and (LastLeft>=0) and (not SaveMaximizedState) then begin
    Top:=LastTop;
    Left:=LastLeft;
  end;
  LastDOSBoxCount:=DOSBoxCounter.Count;
  LastTop:=Top;
  LastLeft:=Left;
  FormResize(self);
end;

procedure TDFendReloadedMainForm.ZipInfoNotify(Sender: TObject);
begin
  ZipInfoPanel.Visible:=(ZipManager.Count>0);
end;

procedure TDFendReloadedMainForm.ZipInfoPanelDblClick(Sender: TObject);
begin
  ShowZipWaitInfoDialog(self);
end;

procedure TDFendReloadedMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If ZipManager.Count>0 then begin
    If MessageDlg(LanguageSetup.ZipFormCloseWarning,mtConfirmation,[mbYes,mbNo],0)<>mrYes then CanClose:=False;
  end;
end;

procedure TDFendReloadedMainForm.AddProfileFromQuickStarter(Sender: TObject; const FileName: String; const WindowsProfile, UseWizard: Boolean; const TemplateNr : Integer);
Var S : String;
begin
  If UseWizard then begin
    StartWizard(MakeRelPath(FileName,PrgSetup.BaseDir),WindowsProfile);
  end else begin
    If WindowsProfile then S:='Windows' else S:='';
    AddProfile(MakeRelPath(FileName,PrgSetup.BaseDir),S,TemplateNr);
  end;  
end;

Procedure TDFendReloadedMainForm.QuickStarterCloseNotify(Sender : TObject);
begin
  MenuViewsQuickStarter.Checked:=False;
end;

procedure TDFendReloadedMainForm.DisplayResolutionChange(var Msg: TMessage);
begin
  If Msg.WParam<=8 then exit;
  ListViewSelectItem(self,ListView.Selected,ListView.Selected<>nil);
end;

end.
