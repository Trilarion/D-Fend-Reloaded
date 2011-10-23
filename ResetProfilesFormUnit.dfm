object ResetProfilesForm: TResetProfilesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'ResetProfilesForm'
  ClientHeight = 524
  ClientWidth = 654
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    654
    524)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 654
    Height = 485
    ActivePage = TabSheet3
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 781
    ExplicitHeight = 584
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitWidth = 636
      ExplicitHeight = 447
      DesignSize = (
        646
        457)
      object InfoLabel1: TLabel
        Left = 8
        Top = 8
        Width = 158
        Height = 13
        Caption = 'Select the games to be changed:'
      end
      object ListBox: TCheckListBox
        Left = 8
        Top = 24
        Width = 628
        Height = 399
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
        ExplicitWidth = 618
        ExplicitHeight = 389
      end
      object SelectAllButton: TBitBtn
        Left = 8
        Top = 429
        Width = 107
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'SelectAllButton'
        TabOrder = 1
        OnClick = SelectButtonClick
        ExplicitTop = 419
      end
      object SelectNoneButton: TBitBtn
        Tag = 1
        Left = 121
        Top = 429
        Width = 107
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'SelectNoneButton'
        TabOrder = 2
        OnClick = SelectButtonClick
        ExplicitTop = 419
      end
      object SelectGenreButton: TBitBtn
        Tag = 2
        Left = 234
        Top = 429
        Width = 107
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'By ...'
        TabOrder = 3
        OnClick = SelectButtonClick
        ExplicitTop = 419
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitWidth = 636
      ExplicitHeight = 447
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 646
        Height = 457
        HorzScrollBar.Visible = False
        VertScrollBar.Smooth = True
        VertScrollBar.Tracking = True
        Align = alClient
        BorderStyle = bsNone
        Color = clWindow
        ParentColor = False
        TabOrder = 0
        ExplicitWidth = 636
        ExplicitHeight = 447
        DesignSize = (
          646
          457)
        object InfoLabel2: TLabel
          Left = 8
          Top = 8
          Width = 133
          Height = 13
          Caption = 'Select pages to be reseted:'
        end
        object ListBox2: TCheckListBox
          Left = 8
          Top = 24
          Width = 628
          Height = 399
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 13
          TabOrder = 0
          ExplicitWidth = 618
          ExplicitHeight = 389
        end
        object SelectAllButton2: TBitBtn
          Tag = 3
          Left = 8
          Top = 429
          Width = 107
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'SelectAllButton'
          TabOrder = 1
          OnClick = SelectButtonClick
          ExplicitTop = 419
        end
        object SelectNoneButton2: TBitBtn
          Tag = 4
          Left = 121
          Top = 429
          Width = 107
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'SelectNoneButton'
          TabOrder = 2
          OnClick = SelectButtonClick
          ExplicitTop = 419
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitLeft = 52
      ExplicitTop = 28
      ExplicitWidth = 773
      ExplicitHeight = 556
      DesignSize = (
        646
        457)
      object RadioButtonTemplate: TRadioButton
        Left = 16
        Top = 24
        Width = 618
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Reset to template'
        Checked = True
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 745
      end
      object ComboBoxTemplate: TComboBox
        Left = 32
        Top = 47
        Width = 602
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
        OnChange = ComboBoxChange
        ExplicitWidth = 729
      end
      object RadioButtonAutoSetup: TRadioButton
        Left = 16
        Top = 88
        Width = 618
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Reset to auto setup template'
        TabOrder = 2
        ExplicitWidth = 745
      end
      object ComboBoxAutoSetup: TComboBox
        Left = 32
        Top = 111
        Width = 602
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 3
        OnChange = ComboBoxChange
        ExplicitWidth = 729
      end
    end
  end
  object OKButton: TBitBtn
    Left = 8
    Top = 491
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 1
    OnClick = OKButtonClick
    Kind = bkOK
    ExplicitTop = 590
  end
  object CancelButton: TBitBtn
    Left = 120
    Top = 491
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    Kind = bkCancel
    ExplicitTop = 590
  end
  object HelpButton: TBitBtn
    Left = 232
    Top = 491
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 3
    OnClick = HelpButtonClick
    Kind = bkHelp
    ExplicitTop = 590
  end
  object PopupMenu: TPopupMenu
    Left = 152
    Top = 1
  end
end
