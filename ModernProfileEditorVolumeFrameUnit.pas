unit ModernProfileEditorVolumeFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, ComCtrls, GameDBUnit, ModernProfileEditorFormUnit;

type
  TModernProfileEditorVolumeFrame = class(TFrame, IModernProfileEditorFrame)
    SoundVolumeLeftLabel1: TLabel;
    SoundVolumeRightLabel1: TLabel;
    SoundVolumeMasterLabel: TLabel;
    SoundVolumeDisneyLabel: TLabel;
    SoundVolumeSpeakerLabel: TLabel;
    SoundVolumeGUSLabel: TLabel;
    SoundVolumeSBLabel: TLabel;
    SoundVolumeFMLabel: TLabel;
    SoundVolumeMasterLeftEdit: TSpinEdit;
    SoundVolumeMasterRightEdit: TSpinEdit;
    SoundVolumeDisneyLeftEdit: TSpinEdit;
    SoundVolumeDisneyRightEdit: TSpinEdit;
    SoundVolumeSpeakerLeftEdit: TSpinEdit;
    SoundVolumeSpeakerRightEdit: TSpinEdit;
    SoundVolumeGUSLeftEdit: TSpinEdit;
    SoundVolumeGUSRightEdit: TSpinEdit;
    SoundVolumeSBLeftEdit: TSpinEdit;
    SoundVolumeSBRightEdit: TSpinEdit;
    SoundVolumeFMLeftEdit: TSpinEdit;
    SoundVolumeFMRightEdit: TSpinEdit;
    SoundVolumeMasterLeftTrackBar: TTrackBar;
    SoundVolumeMasterRightTrackBar: TTrackBar;
    SoundVolumeLeftLabel2: TLabel;
    SoundVolumeRightLabel2: TLabel;
    SoundVolumeDisneyLeftTrackBar: TTrackBar;
    SoundVolumeDisneyRightTrackBar: TTrackBar;
    SoundVolumeLeftLabel3: TLabel;
    SoundVolumeRightLabel3: TLabel;
    SoundVolumeSpeakerLeftTrackBar: TTrackBar;
    SoundVolumeSpeakerRightTrackBar: TTrackBar;
    SoundVolumeGUSLeftTrackBar: TTrackBar;
    SoundVolumeGUSRightTrackBar: TTrackBar;
    SoundVolumeLeftLabel4: TLabel;
    SoundVolumeRightLabel4: TLabel;
    SoundVolumeSBLeftTrackBar: TTrackBar;
    SoundVolumeSBRightTrackBar: TTrackBar;
    SoundVolumeLeftLabel5: TLabel;
    SoundVolumeRightLabel5: TLabel;
    SoundVolumeFMLeftTrackBar: TTrackBar;
    SoundVolumeFMRightTrackBar: TTrackBar;
    SoundVolumeLeftLabel6: TLabel;
    SoundVolumeRightLabel6: TLabel;
    procedure SpinEditChange(Sender: TObject);
    procedure TrackBarChange(Sender: TObject);
  private
    { Private-Deklarationen }
    JustChanging : Boolean;
  public
    { Public-Deklarationen }
    Procedure InitGUI(const InitData : TModernProfileEditorInitData);
    Procedure SetGame(const Game : TGame; const LoadFromTemplate : Boolean);
    Function CheckValue : Boolean;
    Procedure GetGame(const Game : TGame);
    Procedure ShowFrame;
  end;

implementation

uses VistaToolsUnit, LanguageSetupUnit, HelpConsts;

{$R *.dfm}

{ TModernProfileEditorVolumeFrame }

procedure TModernProfileEditorVolumeFrame.InitGUI(const InitData : TModernProfileEditorInitData);
begin
  NoFlicker(SoundVolumeMasterLeftEdit);
  NoFlicker(SoundVolumeMasterRightEdit);
  NoFlicker(SoundVolumeDisneyLeftEdit);
  NoFlicker(SoundVolumeDisneyRightEdit);
  NoFlicker(SoundVolumeSpeakerLeftEdit);
  NoFlicker(SoundVolumeSpeakerRightEdit);
  NoFlicker(SoundVolumeGUSLeftEdit);
  NoFlicker(SoundVolumeGUSRightEdit);
  NoFlicker(SoundVolumeSBLeftEdit);
  NoFlicker(SoundVolumeSBRightEdit);
  NoFlicker(SoundVolumeFMLeftEdit);
  NoFlicker(SoundVolumeFMRightEdit);

  SoundVolumeLeftLabel1.Caption:=LanguageSetup.Left;
  SoundVolumeLeftLabel2.Caption:=LanguageSetup.Left;
  SoundVolumeLeftLabel3.Caption:=LanguageSetup.Left;
  SoundVolumeLeftLabel4.Caption:=LanguageSetup.Left;
  SoundVolumeLeftLabel5.Caption:=LanguageSetup.Left;
  SoundVolumeLeftLabel6.Caption:=LanguageSetup.Left;
  SoundVolumeRightLabel1.Caption:=LanguageSetup.Right;
  SoundVolumeRightLabel2.Caption:=LanguageSetup.Right;
  SoundVolumeRightLabel3.Caption:=LanguageSetup.Right;
  SoundVolumeRightLabel4.Caption:=LanguageSetup.Right;
  SoundVolumeRightLabel5.Caption:=LanguageSetup.Right;
  SoundVolumeRightLabel6.Caption:=LanguageSetup.Right;
  SoundVolumeMasterLabel.Caption:=LanguageSetup.ProfileEditorSoundMasterVolume;
  SoundVolumeDisneyLabel.Caption:=LanguageSetup.ProfileEditorSoundMiscDisneySoundsSource;
  SoundVolumeSpeakerLabel.Caption:=LanguageSetup.ProfileEditorSoundMiscPCSpeaker;
  SoundVolumeGUSLabel.Caption:=LanguageSetup.ProfileEditorSoundGUS;
  SoundVolumeSBLabel.Caption:=LanguageSetup.ProfileEditorSoundSoundBlaster;
  SoundVolumeFMLabel.Caption:=LanguageSetup.ProfileEditorSoundFM;

  JustChanging:=False;

  HelpContext:=ID_ProfileEditSoundVolume;
end;

procedure TModernProfileEditorVolumeFrame.SetGame(const Game: TGame; const LoadFromTemplate: Boolean);
begin
  SoundVolumeMasterLeftEdit.Value:=Game.MixerVolumeMasterLeft;
  SoundVolumeMasterRightEdit.Value:=Game.MixerVolumeMasterRight;
  SoundVolumeDisneyLeftEdit.Value:=Game.MixerVolumeDisneyLeft;
  SoundVolumeDisneyRightEdit.Value:=Game.MixerVolumeDisneyRight;
  SoundVolumeSpeakerLeftEdit.Value:=Game.MixerVolumeSpeakerLeft;
  SoundVolumeSpeakerRightEdit.Value:=Game.MixerVolumeSpeakerRight;
  SoundVolumeGUSLeftEdit.Value:=Game.MixerVolumeGUSLeft;
  SoundVolumeGUSRightEdit.Value:=Game.MixerVolumeGUSRight;
  SoundVolumeSBLeftEdit.Value:=Game.MixerVolumeSBLeft;
  SoundVolumeSBRightEdit.Value:=Game.MixerVolumeSBRight;
  SoundVolumeFMLeftEdit.Value:=Game.MixerVolumeFMLeft;
  SoundVolumeFMRightEdit.Value:=Game.MixerVolumeFMRight;

  SpinEditChange(self);
end;

procedure TModernProfileEditorVolumeFrame.ShowFrame;
begin
end;

procedure TModernProfileEditorVolumeFrame.SpinEditChange(Sender: TObject);
begin
  If JustChanging then exit;
  JustChanging:=True;
  try
    SoundVolumeMasterLeftTrackBar.Position:=SoundVolumeMasterLeftTrackBar.Max-SoundVolumeMasterLeftEdit.Value;
    SoundVolumeMasterRightTrackBar.Position:=SoundVolumeMasterRightTrackBar.Max-SoundVolumeMasterRightEdit.Value;
    SoundVolumeDisneyLeftTrackBar.Position:=SoundVolumeDisneyLeftTrackBar.Max-SoundVolumeDisneyLeftEdit.Value;
    SoundVolumeDisneyRightTrackBar.Position:=SoundVolumeDisneyRightTrackBar.Max-SoundVolumeDisneyRightEdit.Value;
    SoundVolumeSpeakerLeftTrackBar.Position:=SoundVolumeSpeakerLeftTrackBar.Max-SoundVolumeSpeakerLeftEdit.Value;
    SoundVolumeSpeakerRightTrackBar.Position:=SoundVolumeSpeakerRightTrackBar.Max-SoundVolumeSpeakerRightEdit.Value;
    SoundVolumeGUSLeftTrackBar.Position:=SoundVolumeGUSLeftTrackBar.Max-SoundVolumeGUSLeftEdit.Value;
    SoundVolumeGUSRightTrackBar.Position:=SoundVolumeGUSRightTrackBar.Max-SoundVolumeGUSRightEdit.Value;
    SoundVolumeSBLeftTrackBar.Position:=SoundVolumeSBLeftTrackBar.Max-SoundVolumeSBLeftEdit.Value;
    SoundVolumeSBRightTrackBar.Position:=SoundVolumeSBRightTrackBar.Max-SoundVolumeSBRightEdit.Value;
    SoundVolumeFMLeftTrackBar.Position:=SoundVolumeFMLeftTrackBar.Max-SoundVolumeFMLeftEdit.Value;
    SoundVolumeFMRightTrackBar.Position:=SoundVolumeFMRightTrackBar.Max-SoundVolumeFMRightEdit.Value;
  finally
    JustChanging:=False;
  end;
end;

procedure TModernProfileEditorVolumeFrame.TrackBarChange(Sender: TObject);
begin
  If JustChanging then exit;
  JustChanging:=True;
  try
    SoundVolumeMasterLeftEdit.Value:=SoundVolumeMasterLeftTrackBar.Max-SoundVolumeMasterLeftTrackBar.Position;
    SoundVolumeMasterRightEdit.Value:=SoundVolumeMasterRightTrackBar.Max-SoundVolumeMasterRightTrackBar.Position;
    SoundVolumeDisneyLeftEdit.Value:=SoundVolumeDisneyLeftTrackBar.Max-SoundVolumeDisneyLeftTrackBar.Position;
    SoundVolumeDisneyRightEdit.Value:=SoundVolumeDisneyRightTrackBar.Max-SoundVolumeDisneyRightTrackBar.Position;
    SoundVolumeSpeakerLeftEdit.Value:=SoundVolumeSpeakerLeftTrackBar.Max-SoundVolumeSpeakerLeftTrackBar.Position;
    SoundVolumeSpeakerRightEdit.Value:=SoundVolumeSpeakerRightTrackBar.Max-SoundVolumeSpeakerRightTrackBar.Position;
    SoundVolumeGUSLeftEdit.Value:=SoundVolumeGUSLeftTrackBar.Max-SoundVolumeGUSLeftTrackBar.Position;
    SoundVolumeGUSRightEdit.Value:=SoundVolumeGUSRightTrackBar.Max-SoundVolumeGUSRightTrackBar.Position;
    SoundVolumeSBLeftEdit.Value:=SoundVolumeSBLeftTrackBar.Max-SoundVolumeSBLeftTrackBar.Position;
    SoundVolumeSBRightEdit.Value:=SoundVolumeSBRightTrackBar.Max-SoundVolumeSBRightTrackBar.Position;
    SoundVolumeFMLeftEdit.Value:=SoundVolumeFMLeftTrackBar.Max-SoundVolumeFMLeftTrackBar.Position;
    SoundVolumeFMRightEdit.Value:=SoundVolumeFMRightTrackBar.Max-SoundVolumeFMRightTrackBar.Position;
  finally
    JustChanging:=False;
  end;
end;

function TModernProfileEditorVolumeFrame.CheckValue: Boolean;
begin
  result:=True;
end;

procedure TModernProfileEditorVolumeFrame.GetGame(const Game: TGame);
begin
  Game.MixerVolumeMasterLeft:=SoundVolumeMasterLeftEdit.Value;
  Game.MixerVolumeMasterRight:=SoundVolumeMasterRightEdit.Value;
  Game.MixerVolumeDisneyLeft:=SoundVolumeDisneyLeftEdit.Value;
  Game.MixerVolumeDisneyRight:=SoundVolumeDisneyRightEdit.Value;
  Game.MixerVolumeSpeakerLeft:=SoundVolumeSpeakerLeftEdit.Value;
  Game.MixerVolumeSpeakerRight:=SoundVolumeSpeakerRightEdit.Value;
  Game.MixerVolumeGUSLeft:=SoundVolumeGUSLeftEdit.Value;
  Game.MixerVolumeGUSRight:=SoundVolumeGUSRightEdit.Value;
  Game.MixerVolumeSBLeft:=SoundVolumeSBLeftEdit.Value;
  Game.MixerVolumeSBRight:=SoundVolumeSBRightEdit.Value;
  Game.MixerVolumeFMLeft:=SoundVolumeFMLeftEdit.Value;
  Game.MixerVolumeFMRight:=SoundVolumeFMRightEdit.Value;
end;

end.
