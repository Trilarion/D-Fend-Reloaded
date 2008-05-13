unit GameDBUnit;
interface

uses Classes, CommonComponents;

Type TConfOpt=class(TBasePrgSetup)
  public
    Constructor Create;
    Destructor Destroy; override;
    property Resolution : String index 0 read GetString write SetString;
    property Joysticks : String index 1 read GetString write SetString;
    property Scale : String index 2 read GetString write SetString;
    property Render : String index 3 read GetString write SetString;
    property Cycles : String index 4 read GetString write SetString;
    property Video : String index 5 read GetString write SetString;
    property Memory : String index 6 read GetString write SetString;
    property Frameskip : String index 7 read GetString write SetString;
    property Core : String index 8 read GetString write SetString;
    property Sblaster : String index 9 read GetString write SetString;
    property Oplmode : String index 10 read GetString write SetString;
    property KeyboardLayout : String index 11 read GetString write SetString;
    property Codepage : String index 12 read GetString write SetString;
    property ReportedDOSVersion : String index 13 read GetString write SetString;
    property MIDIDevice : String index 14 read GetString write SetString;
    property Blocksize : String index 15 read GetString write SetString;
    property CyclesDown : String index 16 read GetString write SetString;
    property CyclesUp : String index 17 read GetString write SetString;
    property Dma : String index 18 read GetString write SetString;
    property Dma1 : String index 19 read GetString write SetString;
    property Dma2 : String index 20 read GetString write SetString;
    property GUSBase : String index 21 read GetString write SetString;
    property GUSRate : String index 22 read GetString write SetString;
    property HDMA : String index 23 read GetString write SetString;
    property IRQ : String index 24 read GetString write SetString;
    property IRQ1 : String index 25 read GetString write SetString;
    property IRQ2 : String index 26 read GetString write SetString;
    property MPU401 : String index 27 read GetString write SetString;
    property OPLRate : String index 28 read GetString write SetString;
    property PCRate : String index 29 read GetString write SetString;
    property Rate : String index 30 read GetString write SetString;
    property SBBase : String index 31 read GetString write SetString;
    property MouseSensitivity : String index 32 read GetString write SetString;
    property TandyRate : String index 33 read GetString write SetString;
    property ScummVMFilter : String index 34 read GetString write SetString;
    property ScummVMMusicDriver : String index 35 read GetString write SetString;
    property VGAChipsets : String index 36 read GetString write SetString;
    property VGAVideoRAM : String index 37 read GetString write SetString;
end;

const NR_Name=1;

      NR_Icon=101;
      NR_GameExe=102;
      NR_GameExeMD5=103;
      NR_SetupExe=104;
      NR_SetupExeMD5=105;
      NR_GameParameters=106;
      NR_SetupParameters=107;
      NR_LoadFix=108;
      NR_LoadFixMemory=109;
      NR_CaptureFolder=110;
      NR_ExtraDirs=111;
      NR_ExtraFiles=112;
      NR_LastModification=113;

      NR_Genre=201;
      NR_Developer=202;
      NR_Publisher=203;
      NR_Year=204;
      NR_DataDir=205;
      NR_Favorite=206;
      NR_Notes=207;
      NR_WWW=208;
      NR_Language=209;
      NR_UserInfo=210;

      NR_CloseDosBoxAfterGameExit=301;
      NR_StartFullscreen=302;
      NR_AutoLockMouse=303;
      NR_Force2ButtonMouseMode=304;
      NR_SwapMouseButtons=305;
      NR_UseDoublebuffering=306;
      NR_AspectCorrection=307;
      NR_UseScanCodes=308;
      NR_MouseSensitivity=309;
      NR_Render=310;
      NR_WindowResolution=311;
      NR_FullscreenResolution=312;
      NR_Scale=313;
      NR_TextModeLines=314;
      NR_Priority=315;
      NR_CustomDOSBoxDir=316;
      NR_CustomKeyMappingFile=317;

      NR_Memory=401;
      NR_XMS=402;
      NR_EMS=403;
      NR_UMB=404;
      NR_Core=405;
      NR_Cycles=406;
      NR_CyclesUp=407;
      NR_CyclesDown=408;
      NR_FrameSkip=409;
      NR_VideoCard=410;
      NR_KeyboardLayout=411;
      NR_Codepage=412;
      NR_Serial1=413;
      NR_Serial2=414;
      NR_Serial3=415;
      NR_Serial4=416;
      NR_IPX=417;
      NR_IPXType=418;
      NR_IPXAddress=419;
      NR_IPXPort=420;
      NR_Use4DOS=421;
      NR_UseDOS32A=422;
      NR_ReportedDOSVersion=423;
      NR_NumLockStatus=424;
      NR_CapsLockStatus=425;
      NR_ScrollLockStatus=426;
      NR_VGAChipset=427;
      NR_VideoRam=428;
      NR_GlideEmulation=429;

      NR_EnablePrinterEmulation=451;
      NR_PrinterResolution=452;
      NR_PaperWidth=453;
      NR_PaperHeight=454;
      NR_PrinterOutputFormat=455;
      NR_PrinterMultiPage=456;

      NR_NrOfMounts=501;
      NR_Mount0=502;
      NR_Mount1=503;
      NR_Mount2=504;
      NR_Mount3=505;
      NR_Mount4=506;
      NR_Mount5=507;
      NR_Mount6=508;
      NR_Mount7=509;
      NR_Mount8=510;
      NR_Mount9=511;
      NR_AutoMountCDs=512;

      NR_MixerNosound=601;
      NR_MixerRate=602;
      NR_MixerBlocksize=603;
      NR_MixerPrebuffer=604;
      NR_MixerVolumeMasterLeft=605;
      NR_MixerVolumeMasterRight=606;
      NR_MixerVolumeDisneyLeft=607;
      NR_MixerVolumeDisneyRight=608;
      NR_MixerVolumeSpeakerLeft=609;
      NR_MixerVolumeSpeakerRight=610;
      NR_MixerVolumeGUSLeft=611;
      NR_MixerVolumeGUSRight=612;
      NR_MixerVolumeSBLeft=613;
      NR_MixerVolumeSBRight=614;
      NR_MixerVolumeFMLeft=615;
      NR_MixerVolumeFMRight=616;
      NR_SBType=701;
      NR_SBBase=702;
      NR_SBIRQ=703;
      NR_SBDMA=704;
      NR_SBHDMA=705;
      NR_SBMixer=706;
      NR_SBOplMode=707;
      NR_SBOplRate=708;
      NR_GUS=801;
      NR_GUSRate=802;
      NR_GUSBase=803;
      NR_GUSIRQ1=804;
      NR_GUSIRQ2=805;
      NR_GUSDMA1=806;
      NR_GUSDMA2=807;
      NR_GUSUltraDir=808;
      NR_MIDIType=901;
      NR_MIDIDevice=902;
      NR_MIDIConfig=903;
      NR_SpeakerPC=1001;
      NR_SpeakerRate=1002;
      NR_SpeakerTandy=1003;
      NR_SpeakerTandyRate=1004;
      NR_SpeakerDisney=1005;
      NR_JoystickType=1006;
      NR_JoystickTimed=1007;
      NR_JoystickAutoFire=1008;
      NR_JoystickSwap34=1009;
      NR_JoystickButtonwrap=1010;

      NR_Autoexec=1101;
      NR_AutoexecOverridegamestart=1102;
      NR_AutoexecOverrideMount=1103;
      NR_AutoexecBootImage=1104;
      NR_AutoexecFinalization=1105;

      NR_CustomSettings=1201;
      NR_Environment=1202;

      NR_LastOpenTab=1301;
      NR_LastOpenTabModern=1302;

      NR_ProfileMode=1351;

      NR_ScummVMGame=1401;
      NR_ScummVMPath=1402;
      NR_ScummVMFilter=1403;
      NR_ScummVMAutosave=1404;
      NR_ScummVMLanguage=1405;
      NR_ScummVMMusicVolume=1406;
      NR_ScummVMSpeechVolume=1407;
      NR_ScummVMSFXVolume=1408;
      NR_ScummVMMIDIGain=1409;
      NR_ScummVMSampleRate=1410;
      NR_ScummVMMusicDriver=1411;
      NR_ScummVMNativeMT32=1412;
      NR_ScummVMEnableGS=1413;
      NR_ScummVMMultiMIDI=1414;
      NR_ScummVMTalkSpeed=1415;
      NR_ScummVMSpeechMute=1416;
      NR_ScummVMSubtitles=1417;

Type TGame=class(TBasePrgSetup)
  private
    Procedure InitData;
  protected
    Procedure UpdatingFile; override;  
  public
    CacheName : String;
    CacheGenre : String;
    CacheDeveloper : String;
    CachePublisher : String;
    CacheYear : String;
    CacheLanguage : String;
    CacheUserInfo : String;

    Constructor Create(const ASetupFile : String); overload;
    Constructor Create(const ABasePrgSetup : TBasePrgSetup); overload;
    Destructor Destroy; override;

    Procedure LoadCache;
    Procedure ReloadINI; override;

    property Name : String index NR_Name read GetString write SetString;

    property Icon : String index NR_Icon read GetString write SetString;
    property GameExe : String index NR_GameExe read GetString write SetString;
    property GameExeMD5 : String index NR_GameExeMD5 read GetString write SetString;
    property SetupExe : String index NR_SetupExe read GetString write SetString;
    property SetupExeMD5 : String index NR_SetupExeMD5 read GetString write SetString;
    property GameParameters : String index NR_GameParameters read GetString write SetString;
    property SetupParameters : String index NR_SetupParameters read GetString write SetString;
    property LoadFix : Boolean index NR_LoadFix read GetBoolean write SetBoolean;
    property LoadFixMemory : Integer index NR_LoadFixMemory read GetInteger write SetInteger;
    property CaptureFolder : String index NR_CaptureFolder read GetString write SetString;
    property ExtraDirs : String index NR_ExtraDirs read GetString write SetString;
    property ExtraFiles : String index NR_ExtraFiles read GetString write SetString;
    property LastModification : String index NR_LastModification read GetString write SetString;

    property Genre : String index NR_Genre read GetString write SetString;
    property Developer : String index NR_Developer read GetString write SetString;
    property Publisher : String index NR_Publisher read GetString write SetString;
    property Year : String index NR_Year read GetString write SetString;
    property DataDir : String index NR_DataDir read GetString write SetString;
    property Favorite : Boolean index NR_Favorite read GetBoolean write SetBoolean;
    property Notes : String index NR_Notes read GetString write SetString;
    property WWW : String index NR_WWW read GetString write SetString;
    property Language : String index NR_Language read GetString write SetString;
    property UserInfo : String index NR_UserInfo read GetString write SetString;

    property CloseDosBoxAfterGameExit : Boolean index NR_CloseDosBoxAfterGameExit read GetBoolean write SetBoolean;
    property StartFullscreen : Boolean index NR_StartFullscreen read GetBoolean write SetBoolean;
    property AutoLockMouse : Boolean index NR_AutoLockMouse read GetBoolean write SetBoolean;
    property Force2ButtonMouseMode : Boolean index NR_Force2ButtonMouseMode read GetBoolean write SetBoolean;
    property SwapMouseButtons : Boolean index NR_SwapMouseButtons read GetBoolean write SetBoolean;
    property UseDoublebuffering : Boolean index NR_UseDoublebuffering read GetBoolean write SetBoolean;
    property AspectCorrection : Boolean index NR_AspectCorrection read GetBoolean write SetBoolean;
    property UseScanCodes : Boolean index NR_UseScanCodes read GetBoolean write SetBoolean;
    property MouseSensitivity : Integer index NR_MouseSensitivity read GetInteger write SetInteger;
    property Render : String index NR_Render read GetString write SetString;
    property WindowResolution : String index NR_WindowResolution read GetString write SetString;
    property FullscreenResolution : String index NR_FullscreenResolution read GetString write SetString;
    property Scale : String index NR_Scale read GetString write SetString;
    property TextModeLines : Integer index NR_TextModeLines read GetInteger write SetInteger;
    property Priority : String index NR_Priority read GetString write SetString;
    property CustomDOSBoxDir : String index NR_CustomDOSBoxDir read GetString write SetString;
    property CustomKeyMappingFile : String index NR_CustomKeyMappingFile read GetString write SetString;

    property Memory : Integer index NR_Memory read Getinteger write SetInteger;
    property XMS : Boolean index NR_XMS read GetBoolean write SetBoolean;
    property EMS : Boolean index NR_EMS read GetBoolean write SetBoolean;
    property UMB : Boolean index NR_UMB read GetBoolean write SetBoolean;
    property Core : String index NR_Core read GetString write SetString;
    property Cycles : String index NR_Cycles read GetString write SetString;
    property CyclesUp : Integer index NR_CyclesUp read GetInteger write SetInteger;
    property CyclesDown : Integer index NR_CyclesDown read GetInteger write SetInteger;
    property FrameSkip : Integer index NR_FrameSkip read GetInteger write SetInteger;
    property VideoCard : String index NR_VideoCard read GetString write SetString;
    property KeyboardLayout : String index NR_KeyboardLayout read GetString write SetString;
    property Codepage : String index NR_Codepage read GetString write SetString;
    property Serial1 : String index NR_Serial1 read GetString write SetString;
    property Serial2 : String index NR_Serial2 read GetString write SetString;
    property Serial3 : String index NR_Serial3 read GetString write SetString;
    property Serial4 : String index NR_Serial4 read GetString write SetString;
    property IPX : Boolean index NR_IPX read GetBoolean write SetBoolean;
    property IPXType : String index NR_IPXType read GetString write SetString;
    property IPXAddress : String index NR_IPXAddress read GetString write SetString;
    property IPXPort : String index NR_IPXPort read GetString write SetString;
    property Use4DOS : Boolean index NR_Use4DOS read GetBoolean write SetBoolean;
    property UseDOS32A : Boolean index NR_UseDOS32A read GetBoolean write SetBoolean;
    property ReportedDOSVersion : String index NR_ReportedDOSVersion read GetString write SetString;
    property NumLockStatus : String index NR_NumLockStatus read GetString write SetString;
    property CapsLockStatus : String index NR_CapsLockStatus read GetString write SetString;
    property ScrollLockStatus : String index NR_ScrollLockStatus read GetString write SetString;
    property VGAChipset : String index NR_VGAChipset read GetString write SetString;
    property VideoRam : Integer index NR_VideoRam read GetInteger write SetInteger;
    property GlideEmulation : Boolean index NR_GlideEmulation read GetBoolean write SetBoolean;

    property EnablePrinterEmulation : Boolean index NR_EnablePrinterEmulation read GetBoolean write SetBoolean;
    property PrinterResolution : Integer index NR_PrinterResolution read GetInteger write SetInteger;
    property PaperWidth : Integer index NR_PaperWidth read GetInteger write SetInteger;
    property PaperHeight : Integer index NR_PaperHeight read GetInteger write SetInteger;
    property PrinterOutputFormat : String index NR_PrinterOutputFormat read GetString write SetString;
    property PrinterMultiPage : Boolean index NR_PrinterMultiPage read GetBoolean write SetBoolean;

    property NrOfMounts : Integer index NR_NrOfMounts read GetInteger write SetInteger;
    property Mount0 : String index NR_Mount0 read GetString write SetString;
    property Mount1 : String index NR_Mount1 read GetString write SetString;
    property Mount2 : String index NR_Mount2 read GetString write SetString;
    property Mount3 : String index NR_Mount3 read GetString write SetString;
    property Mount4 : String index NR_Mount4 read GetString write SetString;
    property Mount5 : String index NR_Mount5 read GetString write SetString;
    property Mount6 : String index NR_Mount6 read GetString write SetString;
    property Mount7 : String index NR_Mount7 read GetString write SetString;
    property Mount8 : String index NR_Mount8 read GetString write SetString;
    property Mount9 : String index NR_Mount9 read GetString write SetString;
    property AutoMountCDs : Boolean index NR_AutoMountCDs read GetBoolean write SetBoolean;

    property MixerNosound : Boolean index NR_MixerNosound read GetBoolean write SetBoolean;
    property MixerRate : Integer index NR_MixerRate read GetInteger write SetInteger;
    property MixerBlocksize : Integer index NR_MixerBlocksize read GetInteger write SetInteger;
    property MixerPrebuffer : integer index NR_MixerPrebuffer read GetInteger write SetInteger;
    property MixerVolumeMasterLeft : Integer index NR_MixerVolumeMasterLeft read GetInteger write SetInteger;
    property MixerVolumeMasterRight : Integer index NR_MixerVolumeMasterRight read GetInteger write SetInteger;
    property MixerVolumeDisneyLeft : Integer index NR_MixerVolumeDisneyLeft read GetInteger write SetInteger;
    property MixerVolumeDisneyRight : Integer index NR_MixerVolumeDisneyRight read GetInteger write SetInteger;
    property MixerVolumeSpeakerLeft : Integer index NR_MixerVolumeSpeakerLeft read GetInteger write SetInteger;
    property MixerVolumeSpeakerRight : Integer index NR_MixerVolumeSpeakerRight read GetInteger write SetInteger;
    property MixerVolumeGUSLeft : Integer index NR_MixerVolumeGUSLeft read GetInteger write SetInteger;
    property MixerVolumeGUSRight : Integer index NR_MixerVolumeGUSRight read GetInteger write SetInteger;
    property MixerVolumeSBLeft : Integer index NR_MixerVolumeSBLeft read GetInteger write SetInteger;
    property MixerVolumeSBRight : Integer index NR_MixerVolumeSBRight read GetInteger write SetInteger;
    property MixerVolumeFMLeft : Integer index NR_MixerVolumeFMLeft read GetInteger write SetInteger;
    property MixerVolumeFMRight : Integer index NR_MixerVolumeFMRight read GetInteger write SetInteger;
    property SBType : String index NR_SBType read GetString write SetString;
    property SBBase : Integer index NR_SBBase read GetInteger write SetInteger;
    property SBIRQ : Integer index NR_SBIRQ read GetInteger write SetInteger;
    property SBDMA : Integer index NR_SBDMA read GetInteger write SetInteger;
    property SBHDMA : Integer index NR_SBHDMA read GetInteger write SetInteger;
    property SBMixer : Boolean index NR_SBMixer read GetBoolean write SetBoolean;
    property SBOplMode : String index NR_SBOplMode read GetString write SetString;
    property SBOplRate : Integer index NR_SBOplRate read GetInteger write SetInteger;
    property GUS : Boolean index NR_GUS read GetBoolean write SetBoolean;
    property GUSRate : Integer index NR_GUSRate read GetInteger write SetInteger;
    property GUSBase : Integer index NR_GUSBase read GetInteger write SetInteger;
    property GUSIRQ1 : Integer index NR_GUSIRQ1 read GetInteger write SetInteger;
    property GUSIRQ2 : Integer index NR_GUSIRQ2 read GetInteger write SetInteger;
    property GUSDMA1 : Integer index NR_GUSDMA1 read GetInteger write SetInteger;
    property GUSDMA2 : Integer index NR_GUSDMA2 read GetInteger write SetInteger;
    property GUSUltraDir : String index NR_GUSUltraDir read GetString write SetString;
    property MIDIType : String index NR_MIDIType read GetString write SetString;
    property MIDIDevice : String index NR_MIDIDevice read GetString write SetString;
    property MIDIConfig : String index NR_MIDIConfig read GetString write SetString;
    property SpeakerPC : Boolean index NR_SpeakerPC read GetBoolean write SetBoolean;
    property SpeakerRate : Integer index NR_SpeakerRate read GetInteger write SetInteger;
    property SpeakerTandy : String index NR_SpeakerTandy read GetString write SetString;
    property SpeakerTandyRate : Integer index NR_SpeakerTandyRate read GetInteger write SetInteger;
    property SpeakerDisney : Boolean index NR_SpeakerDisney read GetBoolean write SetBoolean;
    property JoystickType : String index NR_JoystickType read GetString write SetString;
    property JoystickTimed : Boolean index NR_JoystickTimed read GetBoolean write SetBoolean;
    property JoystickAutoFire : Boolean index NR_JoystickAutoFire read GetBoolean write SetBoolean;
    property JoystickSwap34 : Boolean index NR_JoystickSwap34 read GetBoolean write SetBoolean;
    property JoystickButtonwrap : Boolean index NR_JoystickButtonwrap read GetBoolean write SetBoolean;

    property Autoexec : String index NR_Autoexec read GetString write SetString;
    property AutoexecOverridegamestart : Boolean index NR_AutoexecOverridegamestart read GetBoolean write SetBoolean;
    property AutoexecOverrideMount : Boolean index NR_AutoexecOverrideMount read GetBoolean write SetBoolean;
    property AutoexecBootImage : String index NR_AutoexecBootImage read GetString write SetString;
    property AutoexecFinalization : String index NR_AutoexecFinalization read GetString write SetString;

    property CustomSettings : String index NR_CustomSettings read GetString write SetString;
    property Environment : String index NR_Environment read GetString write SetString;

    property LastOpenTab : Integer index NR_LastOpenTab read GetInteger write SetInteger;
    property LastOpenTabModern : Integer index NR_LastOpenTabModern read GetInteger write SetInteger;

    property ProfileMode : String index NR_ProfileMode read GetString write SetString;

    property ScummVMGame : String index NR_ScummVMGame read GetString write SetString;
    property ScummVMPath : String index NR_ScummVMPath read GetString write SetString;
    property ScummVMFilter : String index NR_ScummVMFilter read GetString write SetString;
    property ScummVMAutosave : Integer index NR_ScummVMAutosave read GetInteger write SetInteger;
    property ScummVMLanguage : String index NR_ScummVMLanguage read GetString write SetString;
    property ScummVMMusicVolume : Integer index NR_ScummVMMusicVolume read GetInteger write SetInteger;
    property ScummVMSpeechVolume : Integer index NR_ScummVMSpeechVolume read GetInteger write SetInteger;
    property ScummVMSFXVolume : Integer index NR_ScummVMSFXVolume read GetInteger write SetInteger;
    property ScummVMMIDIGain : Integer index NR_ScummVMMIDIGain read GetInteger write SetInteger;
    property ScummVMSampleRate : Integer index NR_ScummVMSampleRate read GetInteger write SetInteger;
    property ScummVMMusicDriver : String index NR_ScummVMMusicDriver read GetString write SetString;
    property ScummVMNativeMT32 : Boolean index NR_ScummVMNativeMT32 read GetBoolean write SetBoolean;
    property ScummVMEnableGS : Boolean index NR_ScummVMEnableGS read GetBoolean write SetBoolean;
    property ScummVMMultiMIDI : Boolean index NR_ScummVMMultiMIDI read GetBoolean write SetBoolean;
    property ScummVMTalkSpeed : Integer index NR_ScummVMTalkSpeed read GetInteger write SetInteger;
    property ScummVMSpeechMute : Boolean index NR_ScummVMSpeechMute read GetBoolean write SetBoolean;
    property ScummVMSubtitles : Boolean index NR_ScummVMSubtitles read GetBoolean write SetBoolean;
end;

Type TGameDB=class
  private
    FDir : String;
    FGameList : TList;
    FOnChanged : TNotifyEvent;
    FConfOpt : TConfOpt;
    Procedure LoadList;
    Procedure GameChanged(Sender : TObject);
    Function LoadGameFromFile(const FileName : String) : Boolean;
    Function MakePROFFileName(const AName, ADir : String) : String;
    function GetGame(I: Integer): TGame;
    function GetCount: Integer;
    Procedure DeleteOldFiles;
  public
    Constructor Create(const ADir : String);
    Destructor Destroy; override;
    Procedure Clear;
    Function Add(const AName : String) : Integer; overload;
    Function Add(const AGame : TGame) : Integer; overload;
    Function Delete(const Index : Integer) : Boolean; overload;
    Function Delete(const AGame : TGame) : Boolean; overload;
    Function IndexOf(const AGame : TGame) : Integer; overload;
    Function IndexOf(const AGame : String) : Integer; overload;
    Function GetGenreList(WithDefaultProfile : Boolean =True) : TStringList;
    Function GetDeveloperList(WithDefaultProfile : Boolean =True) : TStringList;
    Function GetPublisherList(WithDefaultProfile : Boolean =True) : TStringList;
    Function GetYearList(WithDefaultProfile : Boolean =True) : TStringList;
    Function GetLanguageList(WithDefaultProfile : Boolean =True) : TStringList;
    Function GetKeyValueList(const Key : String; WithDefaultProfile : Boolean =True) : TStringList;
    Function GetUserKeys : TStringList;
    Function GetSortedGamesList : TList;
    Procedure StoreAllValues;
    Procedure LoadCache;
    Function ProfFileName(const AName : String) : String;
    property Count : Integer read GetCount;
    property Game[I : Integer] : TGame read GetGame; default;
    property ConfOpt : TConfOpt read FConfOpt;
    property OnChanged : TNotifyEvent read FOnChanged write FOnChanged;
end;

Var DefaultValueReaderGame : TGame = nil;

Const DefaultValuesResolution='original,320x200,640x432,640x480,720x480,800x600,1024x768,1152x864,1280x720,1280x768,1280x960,1280x1024,1600x1200,1920x1080,1920x1200';
      DefaultValuesJoysticks='none,auto,2axis,4axis,fcs,ch';
      DefaultValuesScale='No Scaling (none),Nearest neighbor upscaling with factor 2 (normal2x),Nearest neighbor upscaling with factor 3 (normal3x),'+
                         'Advanced upscaling with factor 2 (advmame2x),Advanced upscaling with factor 3 (advmame3x),Advanced interpoling with factor 2 (advinterp2x),Advanced interpoling with factor 3 (advinterp3x),'+
                         'Advanced upscaling with sharpening with factor 2 (tv2x),Advanced upscaling with sharpening with factor 3 (tv3x),Simulates the phopsphors on a dot trio CRT with factor 2 (rgb2x),Simulates the phopsphors on a dot trio CRT with factor 3 (rgb3x),'+
                         'Nearest neighbor with black lines with factor 2 (scan2x),Nearest neighbor with black lines with factor 3 (scan3x)';
      DefaultValueRender='surface,overlay,opengl,openglnb,ddraw';
      DefaultValueCycles='auto,max,500,1000,1500,2000,2500,3000,3500,4000,4500,5000,6000,7000,8000,9000,10000,11000,12000,12000,13000,14000,15000,16000,17000,18000,19000,20000';
      DefaultValuesVideo='hercules,cga,tandy,vga';
      DefaultValuesMemory='0,1,2,4,8,16,32,63';
      DefaultValuesFrameSkip='0,1,2,3,4,5,6,7,8,9,10';
      DefaultValuesCore='auto,normal,dynamic,simple';
      DefaultValueSBlaster='none,sb1,sb2,sbpro1,sbpro2,sb16';
      DefaultValuesOPLModes='auto,cms,opl2,dualopl2,opl3';
      DefaultValuesKeyboardLayout='default,Albania (SQ),Argentina (LA),Armenia (HY),Australia (US),Austria (GR),Azerbaijan (AZ),'+
                                  'Belarus (BL),Belarus (BY),Belgium (BE),Bosnia & Herzegovina (YU),Bosnia & Herzegovina (BA),Brazil BR),Brazil (br274),'+
                                  'Bulgaria (BG),Canada (CF),Canada (CA),Chile (LA),Colombia (LA),Croatia (YU),Croatia (HR),Czech Republic (CZ243),Denmark (DK),'+
                                  'Ecuador (LA),Estonia (ET),Estonia (EE),Faeroe Islands (FO),Finland (SU),Finland (FI),France (FR),Greece (GK),Germany (GR),'+
                                  'Croatia (HR),Hungary (HU),Iceland (IS),Ireland (UK),Italy (IT),Japan (JP),Kazakhstan (KK),Kyrgyzstan (KY),Latvia (LV),'+
                                  'Lithuania (LT221),Macedonia (MK),Malta (MT),Malta (ML),Mexico (LA),Mongolia (MN),Mongolia (MO),Netherlands (NL),'+
                                  'New Zealand (US),Niger (NE),Nigeria (NG),Norway (NO),Philippines (PH),Poland (PL),Portugal (PO),Romania (RO),Russia (RU),'+
                                  'Serbia & Montenegro (YC),Serbia & Montenegro (SR),Slovakia (SK),Slovenia (YU),Slovenia (SI),South Africa (US),Spain (SP),'+
                                  'Spain (ES),Sweden (SV),Switzerland - French (SF),Switzerland - German (SG),Switzerland - German (SD),Tadjikistan (TJ),'+
                                  'Turkmenistan (TM),Turkey (TR),UK (UK),Ukraine (UR),Ukraine (UA),US (US),Uzbekistan (UZ),Venezuela (LA),Vietnam (VI)';
      DefaultValuesCodepage='default,437,850,852,860,863,865,866';
      DefaultValuesReportedDOSVersion='default,6.2,6.0,5.0,4.0,3.3';
      DefaultValuesMIDIDevice='default,alsa,oss,win32,coreaudio,none';
      DefaultValuesBlocksize='512,1024,2048,3072,4096,8192';
      DefaultValuesCyclesDown='20,50,100,500,1000,2000,5000,10000';
      DefaultValuesCyclesUp='20,50,100,500,1000,2000,5000,10000';
      DefaultValuesDMA='0,1,3';
      DefaultValuesDMA1='0,1,3';
      DefaultValuesDMA2='0,1,3';
      DefaultValuesGUSBase='210,220,240,260,280';
      DefaultValuesGUSRate='8000,11025,22050,32000,44100';
      DefaultValuesHDMA='5,6,7';
      DefaultValuesIRQ='3,5,7,10,11';
      DefaultValuesIRQ1='3,5,7,10,11';
      DefaultValuesIRQ2='3,5,7,10,11';
      DefaultValuesMPU401='none,intelligent,uart';
      DefaultValuesOPLRate='8000,11025,22050,32000,44100';
      DefaultValuesPCRate='8000,11025,22050,32000,44100';
      DefaultValuesRate='8000,11025,22050,32000,44100';
      DefaultValuesSBBase='210,220,240,260,280';
      DefaultValuesMouseSensitivity='10,20,30,40,50,60,70,80,90,100,125,150,175,200,250,300,350,400,450,500,550,600,700,800,900,1000';
      DefaultValuesTandyRate='8000,11025,22050,32000,44100';
      DefaultValuesScummVMFilter='No filtering. no scaling. Fastest (1x),No filtering. factor 2x. default for non 640x480 games (2x),No filtering. factor 3x (3x),2xSAI filter. factor 2x (2xsai),Enhanced 2xSAI filtering. factor 2x (super2xsai),'+
                                 'Less blurry than 2xSAI but slower. Factor 2x (supereagle),Doesn''t rely on blurring like 2xSAI. fast. Factor 2x (advmame2x),Doesn''t rely on blurring like 2xSAI. fast. Factor 3x (advmame3x),Very nice high quality filter but slow. Factor 2x (hq2x),'+
                                 'Very nice high quality filter but slow. Factor 3x (hq3x),Interlace filter. Tries to emulate a TV. Factor 2x (tv2x),Dot matrix effect. Factor 2x (dotmatrix)';
      DefaultValuesScummVMMusicDriver='No music (null),Automatic (auto),Adlib emulation (adlib),FluidSynth MIDI emulation (fluidsynth),MT-32 emulation (mt32),PCjr emulation (only usable in SCUMM games) (pcjr),PC Speaker emulation (pcspk),'+
                                      'FM-TOWNS YM2612 emulation (only usable in SCUMM FM-TOWNS games) (towns),Windows MIDI (windows)';
      DefaultValuesVGAChipsets='s3,et4000,et4000new,et3000,pvga1a,none';
      DefaultValuesVGAVideoRAM='512,1024,2048,4096,8192';

implementation

uses Windows, SysUtils, Dialogs, CommonTools, PrgConsts, PrgSetupUnit, LanguageSetupUnit;

{ TConfOpt }

constructor TConfOpt.Create;
begin
  inherited Create(PrgDataDir+ConfOptFile);

  AddStringRec(0,'resolution','value',DefaultValuesResolution);
  AddStringRec(1,'joysticks','value',DefaultValuesJoysticks);
  AddStringRec(2,'scale','value',DefaultValuesScale);
  AddStringRec(3,'render','value',DefaultValueRender);
  AddStringRec(4,'cycles','value',DefaultValueCycles);
  AddStringRec(5,'video','value',DefaultValuesVideo);
  AddStringRec(6,'memory','value',DefaultValuesMemory);
  AddStringRec(7,'frameskip','value',DefaultValuesFrameSkip);
  AddStringRec(8,'core','value',DefaultValuesCore);
  AddStringRec(9,'sblaster','value',DefaultValueSBlaster);
  AddStringRec(10,'oplmode','value',DefaultValuesOPLModes);
  AddStringRec(11,'keyboardlayout','value',DefaultValuesKeyboardLayout);
  AddStringRec(12,'codepage','value',DefaultValuesCodepage);
  AddStringRec(13,'ReportedDOSVersion','value',DefaultValuesReportedDOSVersion);
  AddStringRec(14,'MIDIDevice','value',DefaultValuesMIDIDevice);
  AddStringRec(15,'Blocksize','value',DefaultValuesBlocksize);
  AddStringRec(16,'CyclesDown','value',DefaultValuesCyclesDown);
  AddStringRec(17,'CyclesUp','value',DefaultValuesCyclesUp);
  AddStringRec(18,'DMA','value',DefaultValuesDMA);
  AddStringRec(19,'DMA1','value',DefaultValuesDMA1);
  AddStringRec(20,'DMA2','value',DefaultValuesDMA2);
  AddStringRec(21,'GUSBase','value',DefaultValuesGUSBase);
  AddStringRec(22,'GUSRate','value',DefaultValuesGUSRate);
  AddStringRec(23,'HDMA','value',DefaultValuesHDMA);
  AddStringRec(24,'IRQ','value',DefaultValuesIRQ);
  AddStringRec(25,'IRQ1','value',DefaultValuesIRQ1);
  AddStringRec(26,'IRQ2','value',DefaultValuesIRQ2);
  AddStringRec(27,'MPU401','value',DefaultValuesMPU401);
  AddStringRec(28,'OPLRate','value',DefaultValuesOPLRate);
  AddStringRec(29,'PCRate','value',DefaultValuesPCRate);
  AddStringRec(30,'Rate','value',DefaultValuesRate);
  AddStringRec(31,'SBBase','value',DefaultValuesSBBase);
  AddStringRec(32,'MouseSensitivity','value',DefaultValuesMouseSensitivity);
  AddStringRec(33,'TandyRate','value',DefaultValuesTandyRate);
  AddStringRec(34,'ScummVMFilter','value',DefaultValuesScummVMFilter);
  AddStringRec(35,'ScummVMMusicDriver','value',DefaultValuesScummVMMusicDriver);
  AddStringRec(36,'VGAChipsets','value',DefaultValuesVGAChipsets);
  AddStringRec(37,'VGAVideoRAM','value',DefaultValuesVGAVideoRAM);
end;

destructor TConfOpt.Destroy;
begin
  StoreAllValues;
  inherited Destroy;
end;

{ TGame }

Constructor TGame.Create(const ASetupFile : String);
begin
  inherited Create(ASetupFile);
  InitData;
  LoadCache;
end;

constructor TGame.Create(const ABasePrgSetup: TBasePrgSetup);
begin
  inherited Create(ABasePrgSetup);
  InitData;
  LoadCache;
end;

destructor TGame.Destroy;
begin
  {not needed: StoreAllValues;}
  inherited Destroy;
end;

procedure TGame.InitData;
Var S : String;
begin
  S:=ExtractFileName(SetupFile);
  while (S<>'') and (S[length(S)]<>'.') do Delete(S,length(S),1);
  If (S<>'') and (S[length(S)]='.') then Delete(S,length(S),1);

  AddStringRec(NR_Name,'ExtraInfo','Name',S);

  AddStringRec(NR_Icon,'ExtraInfo','Icon','');
  AddStringRec(NR_GameExe,'Extra','Exe','');
  AddStringRec(NR_GameExeMD5,'Extra','ExeMD5','');
  AddStringRec(NR_SetupExe,'Extra','Setup','');
  AddStringRec(NR_SetupExeMD5,'Extra','SetupMD5','');
  AddStringRec(NR_GameParameters,'Extra','GameParameters','');
  AddStringRec(NR_SetupParameters,'Extra','SetupParameters','');
  AddBooleanRec(NR_LoadFix,'Extra','Loadhigh',False);
  AddIntegerRec(NR_LoadFixMemory,'Extra','LoadFixVal',64);
  AddStringRec(NR_CaptureFolder,'dosbox','captures','.\'+CaptureSubDir+'\');
  AddStringRec(NR_ExtraDirs,'Extra','ExtraDirs','');
  AddStringRec(NR_ExtraFiles,'Extra','ExtraFiles','');
  AddStringRec(NR_LastModification,'Extra','LastModification','');

  AddStringRec(NR_Genre,'ExtraInfo','Genre','');
  AddStringRec(NR_Developer,'ExtraInfo','Developer','');
  AddStringRec(NR_Publisher,'ExtraInfo','Publisher','');
  AddStringRec(NR_Year,'ExtraInfo','Year','');
  AddStringRec(NR_DataDir,'Extra','DataDir','');
  AddBooleanRec(NR_Favorite,'ExtraInfo','Favorite',False);
  AddStringRec(NR_Notes,'ExtraInfo','Notes','');
  AddStringRec(NR_WWW,'ExtraInfo','WWW','');
  AddStringRec(NR_Language,'ExtraInfo','Language','');
  AddStringRec(NR_UserInfo,'ExtraInfo','UserInfo','');

  AddBooleanRec(NR_CloseDosBoxAfterGameExit,'Extra','CloseOnExit',True);
  AddBooleanRec(NR_StartFullscreen,'sdl','fullscreen',True);
  AddBooleanRec(NR_AutoLockMouse,'sdl','autolock',False);
  AddBooleanRec(NR_Force2ButtonMouseMode,'dos','Force2ButtonMouseMode',False);
  AddBooleanRec(NR_SwapMouseButtons,'dos','SwapMouseButtons',False);
  AddBooleanRec(NR_UseDoublebuffering,'sdl','fulldouble',True);
  AddBooleanRec(NR_AspectCorrection,'render','aspect',False);
  AddBooleanRec(NR_UseScanCodes,'sdl','usecancodes',True);
  AddIntegerRec(NR_MouseSensitivity,'sdl','sensitivity',100);
  AddStringRec(NR_Render,'sdl','output','overlay');
  AddStringRec(NR_WindowResolution,'sdl','windowresolution','original');
  AddStringRec(NR_FullscreenResolution,'sdl','fullresolution','original');
  AddStringRec(NR_Scale,'render','scaler','normal2x');
  AddIntegerRec(NR_TextModeLines,'render','TextModeLines',25);
  AddStringRec(NR_Priority,'sdl','priority','higher,normal');
  AddStringRec(NR_CustomDOSBoxDir,'dosbox','DOSBoxDirectory','default');
  AddStringRec(NR_CustomKeyMappingFile,'sdl','mapperfile','default');

  AddIntegerRec(NR_Memory,'dosbox','memsize',32);
  AddBooleanRec(NR_XMS,'dos','xms',True);
  AddBooleanRec(NR_EMS,'dos','ems',True);
  AddBooleanRec(NR_UMB,'dos','umb',True);
  AddStringRec(NR_Core,'cpu','core','auto');
  AddStringRec(NR_Cycles,'cpu','cycles','3000');
  AddIntegerRec(NR_CyclesUp,'cpu','cyclesup',500);
  AddIntegerRec(NR_CyclesDown,'cpu','cyclesdown',20);
  AddIntegerRec(NR_FrameSkip,'render','frameskip',0);
  AddStringRec(NR_VideoCard,'dosbox','machine','vga');
  AddStringRec(NR_KeyboardLayout,'dos','keyboardlayout','default');
  AddStringRec(NR_Codepage,'dos','codepage','default');
  AddStringRec(NR_Serial1,'serial','serial1','dummy');
  AddStringRec(NR_Serial2,'serial','serial2','dummy');
  AddStringRec(NR_Serial3,'serial','serial3','disabled');
  AddStringRec(NR_Serial4,'serial','serial4','disabled');
  AddBooleanRec(NR_IPX,'ipx','ipx',false);
  AddStringRec(NR_IPXType,'ipx','type','none');
  AddStringRec(NR_IPXAddress,'ipx','address','');
  AddStringRec(NR_IPXPort,'ipx','port','213');
  AddBooleanRec(NR_Use4DOS,'dos','4DOS',False);
  AddBooleanRec(NR_UseDOS32A,'dos','DOS32A',False);
  AddStringRec(NR_ReportedDOSVersion,'dos','ReportedDOSVersion','default');
  AddStringRec(NR_NumLockStatus,'dos','NumLockStatus','');
  AddStringRec(NR_CapsLockStatus,'dos','CapsLockStatus','');
  AddStringRec(NR_ScrollLockStatus,'dos','ScrollLockStatus','');
  AddStringRec(NR_VGAChipset,'vga','svgachipset','3s');
  AddIntegerRec(NR_VideoRam,'vga','videoram',2048);
  AddBooleanRec(NR_GlideEmulation,'glide','glide',False);

  AddBooleanRec(NR_EnablePrinterEmulation,'printer','printer',False);
  AddIntegerRec(NR_PrinterResolution,'printer','dpi',360);
  AddIntegerRec(NR_PaperWidth,'printer','width',85);
  AddIntegerRec(NR_PaperHeight,'printer','height',110);
  AddStringRec(NR_PrinterOutputFormat,'printer','printoutput','ps');
  AddBooleanRec(NR_PrinterMultiPage,'printer','multipage',False);

  AddIntegerRec(NR_NrOfMounts,'Extra','NrOfMounts',0);
  AddStringRec(NR_Mount0,'Extra','0','');
  AddStringRec(NR_Mount1,'Extra','1','');
  AddStringRec(NR_Mount2,'Extra','2','');
  AddStringRec(NR_Mount3,'Extra','3','');
  AddStringRec(NR_Mount4,'Extra','4','');
  AddStringRec(NR_Mount5,'Extra','5','');
  AddStringRec(NR_Mount6,'Extra','6','');
  AddStringRec(NR_Mount7,'Extra','7','');
  AddStringRec(NR_Mount8,'Extra','8','');
  AddStringRec(NR_Mount9,'Extra','9','');
  AddBooleanRec(NR_AutoMountCDs,'Extra','AutoMountCDs',False);

  AddBooleanRec(NR_MixerNosound,'mixer','nosound',false);
  AddIntegerRec(NR_MixerRate,'mixer','rate',22050);
  AddIntegerRec(NR_MixerBlocksize,'mixer','blocksize',2048);
  AddIntegerRec(NR_MixerPrebuffer,'mixer','prebuffer',10);
  AddIntegerRec(NR_MixerVolumeMasterLeft,'mixer','VolumeMasterLeft',100);
  AddIntegerRec(NR_MixerVolumeMasterRight,'mixer','VolumeMasterRight',100);
  AddIntegerRec(NR_MixerVolumeDisneyLeft,'mixer','VolumeDisneyLeft',100);
  AddIntegerRec(NR_MixerVolumeDisneyRight,'mixer','VolumeDisneyRight',100);
  AddIntegerRec(NR_MixerVolumeSpeakerLeft,'mixer','VolumeSpeakerLeft',100);
  AddIntegerRec(NR_MixerVolumeSpeakerRight,'mixer','VolumeSpeakerRight',100);
  AddIntegerRec(NR_MixerVolumeGUSLeft,'mixer','VolumeGUSLeft',100);
  AddIntegerRec(NR_MixerVolumeGUSRight,'mixer','VolumeGUSRight',100);
  AddIntegerRec(NR_MixerVolumeSBLeft,'mixer','VolumeSBLeft',100);
  AddIntegerRec(NR_MixerVolumeSBRight,'mixer','VolumeSBRight',100);
  AddIntegerRec(NR_MixerVolumeFMLeft,'mixer','VolumeFMLeft',100);
  AddIntegerRec(NR_MixerVolumeFMRight,'mixer','VolumeFMRight',100);
  AddStringRec(NR_SBType,'sblaster','sbtype','sb16');
  AddIntegerRec(NR_SBBase,'sblaster','sbbase',220);
  AddIntegerRec(NR_SBIRQ,'sblaster','irq',7);
  AddIntegerRec(NR_SBDMA,'sblaster','dma',1);
  AddIntegerRec(NR_SBHDMA,'sblaster','hdma',5);
  AddBooleanRec(NR_SBMixer,'sblaster','mixer',true);
  AddStringRec(NR_SBOplMode,'sblaster','oplmode','auto');
  AddIntegerRec(NR_SBOplRate,'sblaster','oplrate',22050);
  AddBooleanRec(NR_GUS,'gus','gus',true);
  AddIntegerRec(NR_GUSRate,'gus','gusrate',22050);
  AddIntegerRec(NR_GUSBase,'gus','gusbase',240);
  AddIntegerRec(NR_GUSIRQ1,'gus','irq1',5);
  AddIntegerRec(NR_GUSIRQ2,'gus','irq2',5);
  AddIntegerRec(NR_GUSDMA1,'gus','dma1',1);
  AddIntegerRec(NR_GUSDMA2,'gus','dma2',1);
  AddStringRec(NR_GUSUltraDir,'gus','ultradir','C:\ULTRASND');
  AddStringRec(NR_MIDIType,'midi','mpu401','intelligent');
  AddStringRec(NR_MIDIDevice,'midi','device','default');
  AddStringRec(NR_MIDIConfig,'midi','config','');
  AddBooleanRec(NR_SpeakerPC,'speaker','pcspeaker',true);
  AddIntegerRec(NR_SpeakerRate,'speaker','pcrate',22050);
  AddStringRec(NR_SpeakerTandy,'speaker','tandy','auto');
  AddIntegerRec(NR_SpeakerTandyRate,'speaker','tandyrate',22050);
  AddBooleanRec(NR_SpeakerDisney,'speaker','disney',true);
  AddStringRec(NR_JoystickType,'joystick','joysticktype','none');
  AddBooleanRec(NR_JoystickTimed,'joystick','timed',True);
  AddBooleanRec(NR_JoystickAutoFire,'joystick','autofire',False);
  AddBooleanRec(NR_JoystickSwap34,'joystick','swap34',False);
  AddBooleanRec(NR_JoystickButtonwrap,'joystick','buttonwrap',True);
  AddStringRec(NR_Autoexec,'Extra','autoexec','');
  AddBooleanRec(NR_AutoexecOverridegamestart,'Extra','Overridegamestart',False);
  AddBooleanRec(NR_AutoexecOverrideMount,'Extra','OverrideMount',False);
  AddStringRec(NR_AutoexecBootImage,'Extra','BootImage','');
  AddStringRec(NR_AutoexecFinalization,'Extra','Finalization','');

  AddStringRec(NR_CustomSettings,'Extra','CustomSettings','');
  AddStringRec(NR_Environment,'Extra','Environment','PATH[61]Z:\');

  AddIntegerRec(NR_LastOpenTab,'Extra','Tab',0);
  AddIntegerRec(NR_LastOpenTabModern,'Extra','Tab2',-1);

  AddStringRec(NR_ProfileMode,'Extra','ProfileMode','DOSBox');

  AddStringRec(NR_ScummVMGame,'ScummVM','GameName','');
  AddStringRec(NR_ScummVMPath,'ScummVM','GamePath','');
  AddStringRec(NR_ScummVMFilter,'ScummVM','Filter','2x');
  AddIntegerRec(NR_ScummVMAutosave,'ScummVM','AutosavePeriod',300);
  AddStringRec(NR_ScummVMLanguage,'ScummVM','Language','en');
  AddIntegerRec(NR_ScummVMMusicVolume,'ScummVM','MusicVolume',192);
  AddIntegerRec(NR_ScummVMSpeechVolume,'ScummVM','SpeechVolume',192);
  AddIntegerRec(NR_ScummVMSFXVolume,'ScummVM','SFXVolume',192);
  AddIntegerRec(NR_ScummVMMIDIGain,'ScummVM','MIDIGain',100);
  AddIntegerRec(NR_ScummVMSampleRate,'ScummVM','SampleRate',22050);
  AddStringRec(NR_ScummVMMusicDriver,'ScummVM','MusicDriver','auto');
  AddBooleanRec(NR_ScummVMNativeMT32,'ScummVM','NativeMT32',False);
  AddBooleanRec(NR_ScummVMEnableGS,'ScummVM','EnableGS',False);
  AddBooleanRec(NR_ScummVMMultiMIDI,'ScummVM','MultiMIDI',False);
  AddIntegerRec(NR_ScummVMTalkSpeed,'ScummVM','TalkSpeed',60);
  AddBooleanRec(NR_ScummVMSpeechMute,'ScummVM','SpeechMute',False);
  AddBooleanRec(NR_ScummVMSubtitles,'ScummVM','Subtitles',True);

end;

procedure TGame.LoadCache;
begin
  CacheName:=Name;
  CacheGenre:=Genre;
  CacheDeveloper:=Developer;
  CachePublisher:=Publisher;
  CacheYear:=Year;
  CacheLanguage:=Language;
  CacheUserInfo:=UserInfo;
end;

Procedure TGame.ReloadINI;
begin
  inherited ReloadINI;
  LoadCache;
end;

procedure TGame.UpdatingFile;
begin
  inherited UpdatingFile;
  LastModification:=IntToStr(Round(Int(Now)))+'-'+IntToStr(Round(Frac(Now)*86400));
end;

{ TGameDB }

constructor TGameDB.Create(const ADir : String);
begin
  inherited Create;
  FGameList:=TList.Create;
  FConfOpt:=TConfOpt.Create;
  FDir:=IncludeTrailingPathDelimiter(ADir);
  LoadList;
  DeleteOldFiles;
end;

destructor TGameDB.Destroy;
begin
  Clear;
  FGameList.Free;
  FConfOpt.Free;
  inherited Destroy;
end;

procedure TGameDB.Clear;
Var I : Integer;
begin
  For I:=0 to FGameList.Count-1 do TGame(FGameList[I]).Free;
  FGameList.Clear;
end;

function TGameDB.LoadGameFromFile(const FileName: String): Boolean;
Var Game : TGame;
begin
  result:=FileExists(FileName);
  if not result then exit;

  Game:=TGame.Create(FileName);
  Game.OnChanged:=GameChanged;
  FGameList.Add(Game);

  If Game.Cycles='Max' then Game.Cycles:='max';
  If Game.Cycles='Auto' then Game.Cycles:='auto';
end;

procedure TGameDB.LoadList;
Var Rec : TSearchRec;
    I : Integer;
begin
  Clear;

  ForceDirectories(FDir);

  I:=FindFirst(FDir+'*.prof',faAnyFile,Rec);
  try
    while I=0 do begin
      LoadGameFromFile(FDir+Rec.Name);
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;
end;

procedure TGameDB.DeleteOldFiles;
Var Rec : TSearchRec;
    I : Integer;
begin
  I:=FindFirst(FDir+'*.conf',faAnyFile,Rec);
  try
    while I=0 do begin
      DeleteFile(FDir+Rec.Name);
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;

  I:=FindFirst(FDir+'Tempprof.*',faAnyFile,Rec);
  try
    while I=0 do begin
      DeleteFile(FDir+Rec.Name);
      I:=FindNext(Rec);
    end;
  finally
    FindClose(Rec);
  end;
end;

function TGameDB.MakePROFFileName(const AName, ADir: String): String;
const AllowedChars='ABCDEFGHIJKLMNOPQRSTUVWXYZ���abcdefghijklmnopqrstuvwxyz����01234567890-_=.,;!() ';
Var I : Integer;
begin
  result:='';
  For I:=1 to length(AName) do if Pos(AName[I],AllowedChars)>0 then result:=result+AName[I];
  if result='' then result:='Game';

  if FileExists(ADir+result+'.prof') then begin
    I:=0;
    repeat inc(I) until not FileExists(ADir+result+IntToStr(I)+'.prof');
    result:=ADir+result+IntToStr(I)+'.prof';
  end else begin
    result:=ADir+result+'.prof';
  end;
end;

Function TGameDB.ProfFileName(const AName : String) : String;
Var S : String;
begin
  S:=Trim(ExtUpperCase(AName));
  If (Copy(S,length(S)-4,5)='.PROF') or (Copy(S,length(S)-4,5)='.CONF') then begin
    S:=Trim(AName); S:=Trim(Copy(S,1,length(S)-5));
  end else begin
    S:=AName;
  end;
  result:=MakePROFFileName(Trim(S),FDir);
end;

function TGameDB.Add(const AName: String): Integer;
Var Game : TGame;
begin
  Game:=TGame.Create(MakePROFFileName(AName,FDir));
  Game.Name:=AName;
  Game.OnChanged:=GameChanged;
  result:=FGameList.Add(Game);
end;

Function TGameDB.Add(const AGame : TGame) : Integer;
begin
  AGame.OnChanged:=GameChanged;
  result:=FGameList.Add(AGame);
end;

function TGameDB.Delete(const Index: Integer): Boolean;
Var FileName : String;
begin
  result:=(Index>=0) and (Index<FGameList.Count);
  if not result then exit;
  FileName:=TGame(FGameList[Index]).SetupFile;
  TGame(FGameList[Index]).Free;
  FGameList.Delete(Index);

  If FileExists(FileName) then begin
    If not DeleteFile(FileName) then MessageDlg(Format(LanguageSetup.MessageCouldNotDeleteFile,[FileName]),mtError,[mbOK],0);
  end;
end;

function TGameDB.Delete(const AGame: TGame): Boolean;
begin
  result:=Delete(IndexOf(AGame));
end;

function TGameDB.IndexOf(const AGame: TGame): Integer;
Var I : Integer;
begin
  result:=-1;
  For I:=0 to FGameList.Count-1 do If TGame(FGameList[I])=AGame then begin result:=I; exit; end;
end;

function TGameDB.IndexOf(const AGame: String): Integer;
Var I : Integer;
begin
  result:=-1;
  For I:=0 to FGameList.Count-1 do If TGame(FGameList[I]).Name=AGame then begin result:=I; exit; end;
end;

function TGameDB.GetCount: Integer;
begin
  result:=FGameList.Count;
end;

function TGameDB.GetGame(I: Integer): TGame;
begin
  If (I<0) or (I>=FGameList.Count) then result:=nil else result:=TGame(FGameList[I]);
end;

function TGameDB.GetSortedGamesList: TList;
Var St : TStringList;
    I : Integer;
begin
  St:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do St.AddObject(TGame(FGameList[I]).Name,TGame(FGameList[I]));
    St.Sort;

    result:=TList.Create;
    For I:=0 to St.Count-1 do result.Add(St.Objects[I]);
  finally
    St.Free;
  end;
end;

function TGameDB.GetGenreList(WithDefaultProfile : Boolean): TStringList;
Var StUpper : TStringList;
    I : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      S:=ExtUpperCase(TGame(FGameList[I]).CacheGenre);
      If StUpper.IndexOf(S)<0 then begin
        StUpper.Add(S);
        S:=TGame(FGameList[I]).CacheGenre; If Trim(S)='' then S:=LanguageSetup.NotSet;
        result.Add(S);
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

function TGameDB.GetDeveloperList(WithDefaultProfile : Boolean): TStringList;
Var StUpper : TStringList;
    I : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      S:=ExtUpperCase(TGame(FGameList[I]).CacheDeveloper);
      If StUpper.IndexOf(S)<0 then begin
        StUpper.Add(S);
        S:=TGame(FGameList[I]).CacheDeveloper; If Trim(S)='' then S:=LanguageSetup.NotSet;
        result.Add(S);
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

function TGameDB.GetPublisherList(WithDefaultProfile : Boolean): TStringList;
Var StUpper : TStringList;
    I : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      S:=ExtUpperCase(TGame(FGameList[I]).CachePublisher);
      If StUpper.IndexOf(S)<0 then begin
        StUpper.Add(S);
        S:=TGame(FGameList[I]).CachePublisher; If Trim(S)='' then S:=LanguageSetup.NotSet;
        result.Add(S);
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

function TGameDB.GetYearList(WithDefaultProfile : Boolean): TStringList;
Var StUpper : TStringList;
    I : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      S:=ExtUpperCase(TGame(FGameList[I]).CacheYear);
      If Trim(S)='' then S:=LanguageSetup.NotSet;
      If StUpper.IndexOf(S)<0 then begin
        StUpper.Add(S);
        S:=TGame(FGameList[I]).CacheYear; If Trim(S)='' then S:=LanguageSetup.NotSet;
        result.Add(S);
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

function TGameDB.GetLanguageList(WithDefaultProfile : Boolean): TStringList;
Var StUpper : TStringList;
    I : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      S:=ExtUpperCase(TGame(FGameList[I]).CacheLanguage);
      If Trim(S)='' then S:=LanguageSetup.NotSet;
      If StUpper.IndexOf(S)<0 then begin
        StUpper.Add(S);
        S:=TGame(FGameList[I]).CacheLanguage; If Trim(S)='' then S:=LanguageSetup.NotSet;
        result.Add(S);
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

Function TGameDB.GetKeyValueList(const Key : String; WithDefaultProfile : Boolean =True) : TStringList;
Var StUpper,St : TStringList;
    I,J,K : Integer;
    S,T,KeyUpper,Val : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    KeyUpper:=Trim(ExtUpperCase(Key)); If KeyUpper='' then exit;
    For I:=0 to FGameList.Count-1 do If WithDefaultProfile or (TGame(FGameList[I]).Name<>DosBoxDOSProfile) then begin
      St:=StringToStringList(TGame(FGameList[I]).CacheUserInfo);
      try
        Val:='';
        For K:=0 to St.Count-1 do begin
          S:=St[K]; J:=Pos('=',S); If J=0 then T:='' else begin T:=Trim(Copy(S,J+1,MaxInt)); S:=Trim(Copy(S,1,J-1)); end;
          If Trim(ExtUpperCase(S))=KeyUpper then begin Val:=Trim(T); break; end;
        end;
        If Val='' then Val:=LanguageSetup.NotSet;
        If StUpper.IndexOf(ExtUpperCase(Val))<0 then begin StUpper.Add(ExtUpperCase(Val)); result.Add(Val); end;
      finally
        St.Free;
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

Function TGameDB.GetUserKeys : TStringList;
Var StUpper,St : TStringList;
    I,J,K : Integer;
    S : String;
begin
  result:=TStringList.Create;
  StUpper:=TStringList.Create;
  try
    For I:=0 to FGameList.Count-1 do begin
      St:=StringToStringList(TGame(FGameList[I]).CacheUserInfo);
      try
        For K:=0 to St.Count-1 do begin
          S:=St[K]; J:=Pos('=',S); If J=0 then continue;
          S:=Trim(Copy(S,1,J-1));
          If StUpper.IndexOf(ExtUpperCase(S))>=0 then continue;
          result.Add(S);
          StUpper.Add(ExtUpperCase(S));
        end;
      finally
        St.Free;
      end;
    end;
  finally
    StUpper.Free;
  end;
  result.Sort;
end;

procedure TGameDB.GameChanged(Sender: TObject);
begin
  If Assigned(FOnChanged) then FOnChanged(self);
end;

procedure TGameDB.StoreAllValues;
Var I : Integer;
begin
  For I:=0 to FGameList.Count-1 do TGame(FGameList[I]).StoreAllValues;
end;

procedure TGameDB.LoadCache;
Var I : Integer;
begin
  For I:=0 to FGameList.Count-1 do TGame(FGameList[I]).LoadCache;
end;

initialization
  DefaultValueReaderGame:=TGame.Create('');
finalization
  If Assigned(DefaultValueReaderGame) then DefaultValueReaderGame.Free;
end.
