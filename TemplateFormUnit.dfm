object TemplateForm: TTemplateForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Vorlagen'
  ClientHeight = 491
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 52
    Width = 705
    Height = 420
    ActivePage = TemplateTab
    Align = alClient
    TabOrder = 0
    OnChange = PageControlChange
    ExplicitHeight = 400
    object TemplateTab: TTabSheet
      Caption = 'TemplateTab'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 372
      object ListView: TListView
        Left = 0
        Top = 0
        Width = 697
        Height = 392
        Align = alClient
        BorderStyle = bsNone
        Columns = <>
        PopupMenu = PopupMenu
        SmallImages = ListViewImageList
        TabOrder = 0
        ViewStyle = vsReport
        OnAdvancedCustomDrawItem = ListViewAdvancedCustomDrawItem
        OnColumnClick = ListViewColumnClick
        OnDblClick = ListViewDblClick
        OnKeyDown = ListViewKeyDown
        OnSelectItem = ListViewSelectItem
        ExplicitHeight = 372
      end
    end
    object AutoSetupSheet: TTabSheet
      Caption = 'AutoSetupSheet'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 372
      object ListView2: TListView
        Left = 0
        Top = 0
        Width = 697
        Height = 392
        Align = alClient
        BorderStyle = bsNone
        Columns = <>
        PopupMenu = PopupMenu2
        SmallImages = ListViewImageList
        TabOrder = 0
        ViewStyle = vsReport
        OnColumnClick = ListView2ColumnClick
        OnDblClick = ListView2DblClick
        OnKeyDown = ListView2KeyDown
        OnSelectItem = ListView2SelectItem
        ExplicitHeight = 372
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 472
    Width = 705
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
    ExplicitTop = 452
  end
  object CoolBar: TCoolBar
    Left = 0
    Top = 0
    Width = 705
    Height = 26
    AutoSize = True
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 26
        Width = 703
      end>
    EdgeBorders = []
    FixedSize = True
    FixedOrder = True
    object ToolBar: TToolBar
      Left = 2
      Top = 0
      Width = 703
      Height = 26
      AutoSize = True
      ButtonWidth = 90
      Caption = 'ToolBar'
      EdgeBorders = [ebTop, ebBottom]
      Images = ImageList
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      Transparent = False
      object CloseButton: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'CloseButton'
        ImageIndex = 1
        OnClick = ButtonWork
      end
      object ToolButton7: TToolButton
        Left = 89
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object UseButton: TToolButton
        Tag = 1
        Left = 97
        Top = 0
        AutoSize = True
        Caption = 'UseButton'
        ImageIndex = 2
        OnClick = ButtonWork
      end
      object ToolButton3: TToolButton
        Left = 178
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object AddButton: TToolButton
        Tag = 2
        Left = 186
        Top = 0
        AutoSize = True
        Caption = 'AddButton'
        ImageIndex = 3
        OnClick = ButtonWork
      end
      object EditButton: TToolButton
        Tag = 3
        Left = 268
        Top = 0
        AutoSize = True
        Caption = 'EditButton'
        ImageIndex = 4
        OnClick = ButtonWork
      end
      object DeleteButton: TToolButton
        Tag = 4
        Left = 349
        Top = 0
        AutoSize = True
        Caption = 'DeleteButton'
        ImageIndex = 5
        OnClick = ButtonWork
      end
      object ToolButton4: TToolButton
        Left = 443
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object HelpButton: TToolButton
        Tag = 18
        Left = 451
        Top = 0
        AutoSize = True
        Caption = 'HelpButton'
        ImageIndex = 6
        OnClick = ButtonWork
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 26
    Width = 705
    Height = 26
    AutoSize = True
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar2
        ImageIndex = -1
        MinHeight = 26
        Width = 703
      end>
    EdgeBorders = []
    FixedSize = True
    FixedOrder = True
    object ToolBar2: TToolBar
      Left = 2
      Top = 0
      Width = 703
      Height = 26
      AutoSize = True
      ButtonWidth = 90
      Caption = 'ToolBar'
      EdgeBorders = [ebTop, ebBottom]
      Images = ImageList
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      Transparent = False
      object CloseButton2: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'CloseButton'
        ImageIndex = 1
        OnClick = ButtonWork
      end
      object ToolButton2: TToolButton
        Left = 89
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object AddButton2: TToolButton
        Tag = 10
        Left = 97
        Top = 0
        AutoSize = True
        Caption = 'AddButton'
        ImageIndex = 3
        OnClick = ButtonWork
      end
      object EditButton2: TToolButton
        Tag = 11
        Left = 179
        Top = 0
        AutoSize = True
        Caption = 'EditButton'
        ImageIndex = 4
        OnClick = ButtonWork
      end
      object DeleteButton2: TToolButton
        Tag = 12
        Left = 260
        Top = 0
        AutoSize = True
        Caption = 'DeleteButton'
        ImageIndex = 5
        OnClick = ButtonWork
      end
      object ToolButton1: TToolButton
        Left = 354
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object HelpButton2: TToolButton
        Tag = 18
        Left = 362
        Top = 0
        AutoSize = True
        Caption = 'HelpButton2'
        ImageIndex = 6
        OnClick = ButtonWork
      end
    end
  end
  object ImageList: TImageList
    Left = 528
    Top = 8
    Bitmap = {
      494C010107000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007F7F7F000000FF007F7F7F00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF007F7F7F000000FF007F7F7F00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000080000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF007F7F7F0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      80000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      000000808000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF000000000000808000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF007F7F7F007F7F7F0000FFFF00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF00000000000080800000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF007F7F7F000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF00008080000080800000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF007F7F7F00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F
      7F007F7F7F0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000007F7F7F000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000007F7F7F000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000FF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF00424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FC00847FFFFF0000FC0000EFF83F0000
      200031BFE00F0000000039FFC00700000000993F800300000000CA1F80030000
      0000F40F0001000000009C070001000000009603000100000000CB0100010000
      E000FF8000010000F800F7C080030000F000FFE080030000E001EFF0C0070000
      C403FFF8E00F0000EC07FFFCF83F0000FFFFC007FFFFFF7E8003C007FFFF9001
      0001C007F9FFC0030001C007F0FFE0030001C007F0FFE0030001C007E07FE003
      0001C007C07FE0030001C007843F00010001C0071E3F80000001C007FE1FE007
      0001C007FF1FE00F0001C007FF8FE00F0001C007FFC7E0270001C007FFE3C073
      0001C007FFF89E798003C007FFFF7EFE00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu: TPopupMenu
    Images = ImageList
    Left = 496
    Top = 8
    object PopupUse: TMenuItem
      Caption = '&Verwenden'
      ImageIndex = 2
      object PopupUseProfile: TMenuItem
        Tag = 5
        Caption = 'f'#252'r neues &Profile'
        OnClick = ButtonWork
      end
      object PopupUseDefault: TMenuItem
        Tag = 6
        Caption = 'als neues &Vorgabeprofil'
        OnClick = ButtonWork
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PopupEdit: TMenuItem
      Tag = 3
      Caption = '&Bearbeiten'
      ImageIndex = 4
      ShortCut = 113
      OnClick = ButtonWork
    end
    object PopupCopy: TMenuItem
      Tag = 9
      Caption = 'Kopieren...'
      ShortCut = 8237
      OnClick = ButtonWork
    end
    object PopupDel: TMenuItem
      Tag = 4
      Caption = '&L'#246'schen'
      ImageIndex = 5
      ShortCut = 46
      OnClick = ButtonWork
    end
  end
  object ListViewImageList: TImageList
    Left = 464
    Top = 8
  end
  object UsePopupMenu: TPopupMenu
    Left = 432
    Top = 8
    object PopupUseProfile2: TMenuItem
      Tag = 5
      Caption = 'f'#252'r neues &Profile'
      OnClick = ButtonWork
    end
    object PopupUseDefault2: TMenuItem
      Tag = 6
      Caption = 'als neues &Vorgabeprofil'
      OnClick = ButtonWork
    end
  end
  object AddPopupMenu: TPopupMenu
    Left = 400
    Top = 8
    object PopupAddNew: TMenuItem
      Tag = 7
      Caption = 'neue Vorlage'
      OnClick = ButtonWork
    end
    object PopupAddFromProfile: TMenuItem
      Tag = 8
      Caption = 'Vorlage von Profil'
      OnClick = ButtonWork
    end
  end
  object ListviewIconImageList: TImageList
    Height = 32
    Width = 32
    Left = 368
    Top = 8
  end
  object AddPopupMenu2: TPopupMenu
    Left = 560
    Top = 8
    object PopupAddNew2: TMenuItem
      Tag = 13
      Caption = 'neue Vorlage'
      OnClick = ButtonWork
    end
    object PopupAddFromProfile2: TMenuItem
      Tag = 14
      Caption = 'Vorlage von Profil'
      OnClick = ButtonWork
    end
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList
    Left = 592
    Top = 8
    object PopupEdit2: TMenuItem
      Tag = 11
      Caption = '&Bearbeiten'
      ImageIndex = 4
      ShortCut = 113
      OnClick = ButtonWork
    end
    object PopupCopy2: TMenuItem
      Tag = 15
      Caption = 'Kopieren...'
      ShortCut = 8237
      OnClick = ButtonWork
    end
    object PopupDel2: TMenuItem
      Tag = 12
      Caption = '&L'#246'schen'
      ImageIndex = 5
      ShortCut = 46
      OnClick = ButtonWork
    end
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 624
    Top = 8
    object MenuFile: TMenuItem
      Caption = '&File'
      object MenuFileUse: TMenuItem
        Caption = '&Use'
        ImageIndex = 2
        object MenuFileUseAsProfile: TMenuItem
          Tag = 5
          Caption = 'f'#252'r neues &Profile'
        end
        object MenuFileUseAsDefault: TMenuItem
          Tag = 6
          Caption = 'als neues &Vorgabeprofil'
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MenuFileClose: TMenuItem
        Caption = '&Close'
        ImageIndex = 1
        OnClick = ButtonWork
      end
    end
    object MenuEdit: TMenuItem
      Caption = '&Edit'
      object MenuEditAdd: TMenuItem
        Caption = '&Add...'
        ImageIndex = 3
        object MenuEditAddNewTemplate: TMenuItem
          Tag = 7
          Caption = 'neue Vorlage'
          ShortCut = 45
          OnClick = ButtonWork
        end
        object MenuEditAddTemplateFromProfile: TMenuItem
          Tag = 8
          Caption = 'Vorlage von Profil'
          OnClick = ButtonWork
        end
      end
      object MenuEditAdd2: TMenuItem
        Caption = '&Add...'
        ImageIndex = 3
        object MenuEditAdd2NewTemplate: TMenuItem
          Tag = 13
          Caption = 'neue Vorlage'
          ShortCut = 45
          OnClick = ButtonWork
        end
        object MenuEditAdd2TemplateFromProfile: TMenuItem
          Tag = 14
          Caption = 'Vorlage von Profil'
          OnClick = ButtonWork
        end
      end
      object MenuEditEdit: TMenuItem
        Tag = 3
        Caption = 'Edit...'
        ImageIndex = 4
        ShortCut = 113
        OnClick = ButtonWork
      end
      object MenuEditEdit2: TMenuItem
        Tag = 11
        Caption = 'Edit...'
        ImageIndex = 4
        ShortCut = 113
        OnClick = ButtonWork
      end
      object MenuEditEditMultipleTemplates: TMenuItem
        Tag = 16
        Caption = 'Edit multiple templates...'
        OnClick = ButtonWork
      end
      object MenuEditEditMultipleTemplates2: TMenuItem
        Tag = 17
        Caption = 'Edit multiple templates...'
        OnClick = ButtonWork
      end
      object MenuEditCopy: TMenuItem
        Tag = 9
        Caption = 'Copy...'
        ShortCut = 8237
        OnClick = ButtonWork
      end
      object MenuEditCopy2: TMenuItem
        Tag = 15
        Caption = 'Copy...'
        ShortCut = 8237
        OnClick = ButtonWork
      end
      object MenuEditDelete: TMenuItem
        Tag = 4
        Caption = 'Delete'
        ImageIndex = 5
        ShortCut = 46
        OnClick = ButtonWork
      end
      object MenuEditDelete2: TMenuItem
        Tag = 12
        Caption = 'Delete'
        ImageIndex = 5
        ShortCut = 46
        OnClick = ButtonWork
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MenuEditCheck: TMenuItem
        Tag = 19
        Caption = 'Check for duplicate checksums...'
        OnClick = ButtonWork
      end
    end
    object MenuHelp: TMenuItem
      Caption = '&Help'
      object MenuHelpHelp: TMenuItem
        Tag = 18
        Caption = '&Help'
        ImageIndex = 6
        ShortCut = 112
        OnClick = ButtonWork
      end
    end
  end
end
