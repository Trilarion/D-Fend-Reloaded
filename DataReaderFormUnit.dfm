object DataReaderForm: TDataReaderForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'DataReaderForm'
  ClientHeight = 424
  ClientWidth = 592
  Color = clBtnFace
  Constraints.MinHeight = 460
  Constraints.MinWidth = 600
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
    592
    424)
  PixelsPerInch = 96
  TextHeight = 13
  object SearchResultsLabel: TLabel
    Left = 16
    Top = 69
    Width = 68
    Height = 13
    Caption = 'Search results'
  end
  object GameNameEdit: TLabeledEdit
    Left = 16
    Top = 24
    Width = 473
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 72
    EditLabel.Height = 13
    EditLabel.Caption = 'GameNameEdit'
    TabOrder = 0
  end
  object SearchButton: TBitBtn
    Left = 495
    Top = 22
    Width = 89
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    TabOrder = 1
    OnClick = SearchButtonClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object ListBox: TListBox
    Left = 16
    Top = 88
    Width = 201
    Height = 298
    Anchors = [akLeft, akTop, akBottom]
    ItemHeight = 13
    TabOrder = 2
    OnClick = ListBoxClick
    ExplicitHeight = 278
  end
  object GameDataBox: TGroupBox
    Left = 232
    Top = 88
    Width = 352
    Height = 299
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'GameDataBox'
    TabOrder = 3
    ExplicitHeight = 279
    DesignSize = (
      352
      299)
    object GenreLabel: TLabel
      Left = 32
      Top = 90
      Width = 54
      Height = 13
      Caption = 'GenreLabel'
    end
    object DeveloperLabel: TLabel
      Left = 32
      Top = 134
      Width = 74
      Height = 13
      Caption = 'DeveloperLabel'
    end
    object PublisherLabel: TLabel
      Left = 32
      Top = 178
      Width = 68
      Height = 13
      Caption = 'PublisherLabel'
    end
    object YearLabel: TLabel
      Left = 32
      Top = 222
      Width = 47
      Height = 13
      Caption = 'YearLabel'
    end
    object NameLabel: TLabel
      Left = 32
      Top = 42
      Width = 54
      Height = 13
      Caption = 'GenreLabel'
    end
    object GenreCheckBox: TCheckBox
      Left = 16
      Top = 72
      Width = 324
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Genre'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object DeveloperCheckBox: TCheckBox
      Left = 16
      Top = 116
      Width = 324
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Developer'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object PublisherCheckBox: TCheckBox
      Left = 16
      Top = 160
      Width = 324
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Publisher'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object YearCheckBox: TCheckBox
      Left = 16
      Top = 204
      Width = 324
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Year'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object DownloadCoverCheckBox: TCheckBox
      Left = 16
      Top = 248
      Width = 324
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download cover and store it in the capture folder'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object NameCheckBox: TCheckBox
      Left = 16
      Top = 24
      Width = 321
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Game name'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object DownloadCoverAllCheckBox: TCheckBox
      Left = 32
      Top = 271
      Width = 305
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download all available images'
      TabOrder = 6
    end
  end
  object InsertButton: TBitBtn
    Left = 16
    Top = 393
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Insert data'
    Enabled = False
    ModalResult = 1
    TabOrder = 4
    OnClick = InsertButtonClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ExplicitTop = 373
  end
  object CancelButton: TBitBtn
    Left = 128
    Top = 393
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    TabOrder = 5
    Kind = bkCancel
    ExplicitTop = 373
  end
  object SearchTypeCheckBox: TCheckBox
    Left = 16
    Top = 46
    Width = 473
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Search for DOS games only'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = SearchTypeCheckBoxClick
  end
end
