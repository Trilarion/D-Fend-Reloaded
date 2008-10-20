object ChangeProfilesForm: TChangeProfilesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Change profiles'
  ClientHeight = 542
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 505
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Step 1: Select games'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object InfoLabel: TLabel
        Left = 8
        Top = 8
        Width = 158
        Height = 13
        Caption = 'Select the games to be changed:'
      end
      object SelectAllButton: TBitBtn
        Left = 8
        Top = 447
        Width = 107
        Height = 25
        Caption = 'SelectAllButton'
        TabOrder = 0
        OnClick = SelectButtonClick
      end
      object SelectNoneButton: TBitBtn
        Tag = 1
        Left = 121
        Top = 447
        Width = 107
        Height = 25
        Caption = 'SelectNoneButton'
        TabOrder = 1
        OnClick = SelectButtonClick
      end
      object SelectGenreButton: TBitBtn
        Tag = 2
        Left = 234
        Top = 447
        Width = 107
        Height = 25
        Caption = 'By ...'
        TabOrder = 2
        OnClick = SelectButtonClick
      end
      object ListBox: TCheckListBox
        Left = 8
        Top = 27
        Width = 585
        Height = 414
        ItemHeight = 13
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Step 2: Settings to change'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        601
        477)
      object GenreCheckBox: TCheckBox
        Left = 16
        Top = 16
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Genre'
        TabOrder = 0
        OnClick = CheckBoxClick
      end
      object GenreComboBox: TComboBox
        Left = 311
        Top = 14
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 1
      end
      object DeveloperCheckBox: TCheckBox
        Left = 16
        Top = 43
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Developer'
        TabOrder = 2
        OnClick = CheckBoxClick
      end
      object DeveloperComboBox: TComboBox
        Left = 311
        Top = 41
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 3
      end
      object PublisherCheckBox: TCheckBox
        Left = 16
        Top = 70
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Publisher'
        TabOrder = 4
        OnClick = CheckBoxClick
      end
      object PublisherComboBox: TComboBox
        Left = 311
        Top = 68
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 5
      end
      object YearCheckBox: TCheckBox
        Left = 16
        Top = 97
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Year'
        TabOrder = 6
        OnClick = CheckBoxClick
      end
      object YearComboBox: TComboBox
        Left = 311
        Top = 95
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 7
      end
      object LanguageCheckBox: TCheckBox
        Left = 16
        Top = 124
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Language'
        TabOrder = 8
        OnClick = CheckBoxClick
      end
      object LanguageComboBox: TComboBox
        Left = 311
        Top = 122
        Width = 274
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 9
      end
      object FavouriteCheckBox: TCheckBox
        Left = 16
        Top = 151
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Favourite'
        TabOrder = 10
        OnClick = CheckBoxClick
      end
      object FavouriteComboBox: TComboBox
        Left = 312
        Top = 149
        Width = 105
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 11
      end
      object SetUserInfoCheckBox: TCheckBox
        Left = 16
        Top = 178
        Width = 281
        Height = 17
        Caption = 'Set user info'
        TabOrder = 12
        OnClick = CheckBoxClick
      end
      object DelUserInfoCheckBox: TCheckBox
        Left = 16
        Top = 205
        Width = 281
        Height = 17
        Caption = 'Del user info'
        TabOrder = 15
        OnClick = CheckBoxClick
      end
      object SetUserInfoComboBox: TComboBox
        Left = 312
        Top = 176
        Width = 105
        Height = 21
        ItemHeight = 0
        TabOrder = 13
      end
      object SetUserInfoEdit: TEdit
        Left = 423
        Top = 176
        Width = 162
        Height = 21
        TabOrder = 14
      end
      object DelUserInfoComboBox: TComboBox
        Left = 312
        Top = 203
        Width = 105
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 16
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Step 2: Settings to change'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        601
        477)
      object CloseOnExitCheckBox: TCheckBox
        Left = 16
        Top = 18
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Close on exit'
        TabOrder = 0
        OnClick = CheckBoxClick
      end
      object CloseOnExitComboBox: TComboBox
        Left = 312
        Top = 16
        Width = 105
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 1
      end
      object StartFullscreenCheckBox: TCheckBox
        Left = 16
        Top = 45
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Start fullscreen'
        TabOrder = 2
        OnClick = CheckBoxClick
      end
      object StartFullscreenComboBox: TComboBox
        Left = 311
        Top = 43
        Width = 106
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 3
      end
      object LockMouseCheckBox: TCheckBox
        Left = 16
        Top = 72
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Lock mouse'
        TabOrder = 4
        OnClick = CheckBoxClick
      end
      object LockMouseComboBox: TComboBox
        Left = 312
        Top = 70
        Width = 105
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 5
      end
      object UseDoublebufferCheckBox: TCheckBox
        Left = 16
        Top = 99
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Use doublebuffer'
        TabOrder = 6
        OnClick = CheckBoxClick
      end
      object UseDoublebufferComboBox: TComboBox
        Left = 312
        Top = 97
        Width = 105
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 7
      end
      object RenderCheckBox: TCheckBox
        Left = 16
        Top = 126
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Render'
        TabOrder = 8
        OnClick = CheckBoxClick
      end
      object RenderComboBox: TComboBox
        Left = 312
        Top = 124
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 9
      end
      object MemoryCheckBox: TCheckBox
        Left = 16
        Top = 261
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Memory'
        TabOrder = 18
        OnClick = CheckBoxClick
      end
      object MemoryComboBox: TComboBox
        Left = 311
        Top = 259
        Width = 106
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 19
      end
      object CPUCyclesCheckBox: TCheckBox
        Left = 16
        Top = 288
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CPU cycles'
        TabOrder = 20
        OnClick = CheckBoxClick
      end
      object CPUCyclesComboBox: TComboBox
        Left = 312
        Top = 286
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 21
      end
      object EmulationCoreCheckBox: TCheckBox
        Left = 16
        Top = 315
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Emulation core'
        TabOrder = 22
        OnClick = CheckBoxClick
      end
      object EmulationCoreComboBox: TComboBox
        Left = 312
        Top = 313
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 23
      end
      object WindowResolutionCheckBox: TCheckBox
        Left = 16
        Top = 153
        Width = 289
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Fenster-Aufl'#246'sung'
        TabOrder = 10
        OnClick = CheckBoxClick
      end
      object WindowResolutionComboBox: TComboBox
        Left = 311
        Top = 151
        Width = 106
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 11
      end
      object FullscreenResolutionComboBox: TComboBox
        Left = 312
        Top = 178
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 13
      end
      object ScaleComboBox: TComboBox
        Left = 311
        Top = 205
        Width = 274
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 15
      end
      object FullscreenResolutionCheckBox: TCheckBox
        Left = 16
        Top = 180
        Width = 290
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Vollbild-Aufl'#246'sung'
        TabOrder = 12
        OnClick = CheckBoxClick
      end
      object ScaleCheckBox: TCheckBox
        Left = 16
        Top = 207
        Width = 289
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Skalierung'
        TabOrder = 14
        OnClick = CheckBoxClick
      end
      object KeyboardLayoutCheckBox: TCheckBox
        Left = 16
        Top = 342
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Keyboard layout'
        TabOrder = 24
        OnClick = CheckBoxClick
      end
      object KeyboardLayoutComboBox: TComboBox
        Left = 312
        Top = 340
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 25
      end
      object CodepageCheckBox: TCheckBox
        Left = 16
        Top = 369
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Codepage'
        TabOrder = 26
        OnClick = CheckBoxClick
      end
      object CodepageComboBox: TComboBox
        Left = 312
        Top = 367
        Width = 105
        Height = 21
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 27
      end
      object AspectCheckBox: TCheckBox
        Left = 16
        Top = 234
        Width = 296
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Aspect correction'
        TabOrder = 16
        OnClick = CheckBoxClick
      end
      object AspectComboBox: TComboBox
        Left = 311
        Top = 232
        Width = 106
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 0
        TabOrder = 17
      end
    end
  end
  object OKButton: TBitBtn
    Left = 8
    Top = 511
    Width = 97
    Height = 25
    TabOrder = 1
    OnClick = OKButtonClick
    Kind = bkOK
  end
  object CancelButton: TBitBtn
    Left = 120
    Top = 511
    Width = 97
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object HelpButton: TBitBtn
    Left = 232
    Top = 511
    Width = 97
    Height = 25
    TabOrder = 3
    OnClick = HelpButtonClick
    Kind = bkHelp
  end
  object PopupMenu: TPopupMenu
    Left = 416
    Top = 507
  end
end
