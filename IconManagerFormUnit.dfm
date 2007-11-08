object IconManagerForm: TIconManagerForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Icon Manager'
  ClientHeight = 288
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView: TListView
    Left = 0
    Top = 0
    Width = 564
    Height = 249
    Align = alTop
    Columns = <>
    IconOptions.Arrangement = iaLeft
    IconOptions.WrapText = False
    LargeImages = ImageList
    ReadOnly = True
    SmallImages = ImageList
    SortType = stText
    TabOrder = 0
    ViewStyle = vsSmallIcon
    OnChange = ListViewChange
    OnDblClick = ListViewDblClick
    OnKeyDown = ListViewKeyDown
  end
  object OKButton: TBitBtn
    Left = 8
    Top = 255
    Width = 97
    Height = 25
    TabOrder = 1
    OnClick = OKButtonClick
    Kind = bkOK
  end
  object CancelButton: TBitBtn
    Left = 120
    Top = 255
    Width = 97
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object AddButton: TBitBtn
    Left = 232
    Top = 255
    Width = 97
    Height = 25
    Caption = 'Hinzuf'#252'gen'
    TabOrder = 3
    OnClick = AddButtonClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DelButton: TBitBtn
    Left = 344
    Top = 255
    Width = 97
    Height = 25
    Caption = 'L'#246'schen'
    TabOrder = 4
    OnClick = DelButtonClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object ImageList: TImageList
    Height = 32
    Width = 32
    Left = 456
    Top = 256
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'ico'
    Left = 496
    Top = 256
  end
end
