object CreateImageForm: TCreateImageForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CreateImage'
  ClientHeight = 476
  ClientWidth = 554
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
  DesignSize = (
    554
    476)
  PixelsPerInch = 96
  TextHeight = 13
  object ImageFileButton: TSpeedButton
    Left = 523
    Top = 167
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = ImageFileButtonClick
  end
  object NeedFreeDOSLabel: TLabel
    Left = 24
    Top = 276
    Width = 500
    Height = 40
    AutoSize = False
    Caption = 'NeedFreeDOSLabel'
    WordWrap = True
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 556
    Height = 145
    ActivePage = FloppyImageSheet
    Images = ImageList
    TabOrder = 0
    object FloppyImageSheet: TTabSheet
      Caption = 'Floppy Image'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object FloppyImageTypeLabel: TLabel
        Left = 16
        Top = 16
        Width = 96
        Height = 13
        Caption = 'Floppy Image Type:'
      end
      object FloppyCylindersLabel: TLabel
        Left = 16
        Top = 63
        Width = 48
        Height = 13
        Caption = 'Cylinders:'
      end
      object FloppyHeadsLabel: TLabel
        Left = 128
        Top = 63
        Width = 34
        Height = 13
        Caption = 'Heads:'
      end
      object FloppySPTLabel: TLabel
        Left = 240
        Top = 63
        Width = 88
        Height = 13
        Caption = 'Sectors per Track:'
      end
      object FloppyImageTypeComboBox: TComboBox
        Left = 16
        Top = 32
        Width = 516
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
        OnChange = FloppyImageTypeComboBoxChange
      end
      object FloppyCylindersComboBox: TComboBox
        Left = 16
        Top = 79
        Width = 96
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 1
        OnChange = FloppyDataChange
      end
      object FloppyHeadsComboBox: TComboBox
        Left = 128
        Top = 79
        Width = 96
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 2
        OnChange = FloppyDataChange
      end
      object FloppySPTComboBox: TComboBox
        Left = 240
        Top = 79
        Width = 96
        Height = 21
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 3
        OnChange = FloppyDataChange
      end
      object FloppyImageSizeEdit: TLabeledEdit
        Left = 352
        Top = 79
        Width = 180
        Height = 21
        EditLabel.Width = 56
        EditLabel.Height = 13
        EditLabel.Caption = 'Image Size:'
        ReadOnly = True
        TabOrder = 4
      end
    end
    object HDImageSheet: TTabSheet
      Caption = 'HD Image'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object HDSizeEdit: TLabeledEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 91
        EditLabel.Height = 13
        EditLabel.Caption = 'Image size (in MB):'
        TabOrder = 0
        Text = '20'
        OnChange = HDSizeEditChange
      end
      object HDGeometryEdit: TLabeledEdit
        Left = 160
        Top = 32
        Width = 209
        Height = 21
        EditLabel.Width = 83
        EditLabel.Height = 13
        EditLabel.Caption = 'Image geometry:'
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object OKButton: TBitBtn
    Left = 8
    Top = 443
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 10
    OnClick = OKButtonClick
    Kind = bkOK
  end
  object CancelButton: TBitBtn
    Left = 120
    Top = 443
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 11
    Kind = bkCancel
  end
  object HelpButton: TBitBtn
    Left = 232
    Top = 443
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 12
    OnClick = HelpButtonClick
    Kind = bkHelp
  end
  object ImageFileEdit: TLabeledEdit
    Left = 8
    Top = 168
    Width = 509
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Filename:'
    TabOrder = 1
  end
  object CompressedCheckBox: TCheckBox
    Left = 8
    Top = 195
    Width = 516
    Height = 17
    Caption = 'Store Image with NTFS-compression'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object MakeBootableCheckBox: TCheckBox
    Left = 8
    Top = 258
    Width = 516
    Height = 17
    Caption = 'Make floppy image bootable'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = MakeBootableCheckBoxClick
  end
  object AddKeyboardDriverCheckBox: TCheckBox
    Left = 8
    Top = 317
    Width = 516
    Height = 17
    Caption = 'Use DOSBox default keyboard layout on bootdisk'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object AddMouseDriverCheckBox: TCheckBox
    Left = 8
    Top = 340
    Width = 516
    Height = 17
    Caption = 'Include mouse driver on bootdisk'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object AddFormatCheckBox: TCheckBox
    Left = 8
    Top = 386
    Width = 516
    Height = 17
    Caption = 'Add disk management utilities'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object AddEditCheckbox: TCheckBox
    Left = 8
    Top = 409
    Width = 516
    Height = 17
    Caption = 'Add text editor'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object FormatImageCheckBox: TCheckBox
    Left = 8
    Top = 235
    Width = 516
    Height = 17
    Caption = 'Create preformated image'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = MakeBootableCheckBoxClick
  end
  object MemoryManagerCheckBox: TCheckBox
    Left = 8
    Top = 363
    Width = 516
    Height = 17
    Caption = 'Use memory manager on disk image'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object ImageList: TImageList
    Left = 192
    Top = 1
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF000000000000000000BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF000000FF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008003FFFF00000000
      0001FFFF00000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001FFFF00000000
      0001FFFF000000008003FFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'img'
    Left = 224
    Top = 1
  end
end
