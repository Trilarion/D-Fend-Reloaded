object SetupFrameUpdate: TSetupFrameUpdate
  Left = 0
  Top = 0
  Width = 583
  Height = 282
  TabOrder = 0
  object DataReaderInfoLabel: TLabel
    Left = 16
    Top = 174
    Width = 199
    Height = 13
    Caption = 'Mobygames reader configuration update:'
  end
  object PackagesLabel: TLabel
    Left = 16
    Top = 80
    Width = 102
    Height = 13
    Caption = 'Package lists update:'
  end
  object CheatsLabel: TLabel
    Left = 16
    Top = 126
    Width = 86
    Height = 13
    Caption = 'Cheats database:'
  end
  object ProgramUpdateInfoLabel: TLabel
    Left = 16
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Program update:'
  end
  object UpdateCheckBox: TCheckBox
    Left = 16
    Top = 48
    Width = 553
    Height = 17
    Caption = 'Kennung der aktuellen Version in die Abfrage-URL integrieren'
    TabOrder = 1
  end
  object DataReaderComboBox: TComboBox
    Left = 16
    Top = 189
    Width = 401
    Height = 21
    Style = csDropDownList
    ItemHeight = 0
    TabOrder = 4
  end
  object PackagesComboBox: TComboBox
    Left = 16
    Top = 95
    Width = 401
    Height = 21
    Style = csDropDownList
    ItemHeight = 0
    TabOrder = 2
  end
  object UpdateButton: TBitBtn
    Left = 16
    Top = 236
    Width = 169
    Height = 25
    Caption = 'Search for updates now'
    TabOrder = 5
    OnClick = ButtonWork
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0010992000D26C1000D26C1000D26C
      1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF001099200010992000A3D6A700A3D6A700E3B79400E3B7
      9400D26C1000D26C1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0010992000B1E7BC00B1E7BC00109920004AB25A00D26C1000C55E
      0A00E3B79400E3B79400D26C1000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0010992000BCEDD3005CCC8B004AB25A004AB25A00D26C1000C55E
      0A00C55E0A00E3B79400D26C1000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0010992000BCEDD3008CD49B004AB25A00E9A04100E9A04100E9A04100D26C
      1000D26C100010992000A3D6A700D26C1000FF00FF00FF00FF00FF00FF00FF00
      FF00D26C1000FAEBD000E9A04100E3B79400E9A04100E9A04100E9A041004AB2
      5A004AB25A004AB25A00A3D6A70010992000FF00FF00FF00FF00FF00FF00FF00
      FF00D26C1000FAEBD000E9A041008CD49B00E9A04100E9A04100E9A041005CCC
      8B005CCC8B004AB25A00A3D6A70010992000FF00FF00FF00FF00FF00FF00FF00
      FF00D26C1000FAEBD000BCEDD300BCEDD3008CD49B00FAEBD000FAEBD0004AB2
      5A005CCC8B005CCC8B00B1E7BC0010992000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D26C1000E6F7EC00BCEDD300E6F7EC00458F6300458F6300E6F7
      EC004AB25A00B1E7BC0010992000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0010992000E6F7EC00FF00FF00458F63005CCC8B004AB25A00458F
      6300E6F7EC00B1E7BC0010992000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00458F63005CCC8B005CCC8B005CCC8B005CCC
      8B00458F6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00458F6300458F6300458F63005CCC8B005CCC8B00458F
      6300458F6300458F6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00458F63005CCC8B005CCC8B00458F
      6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00458F63005CCC8B004AB25A00458F
      6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object CheatsComboBox: TComboBox
    Left = 16
    Top = 141
    Width = 401
    Height = 21
    Style = csDropDownList
    ItemHeight = 0
    TabOrder = 3
  end
  object ProgramUpdateComboBox: TComboBox
    Left = 16
    Top = 23
    Width = 401
    Height = 21
    Style = csDropDownList
    ItemHeight = 0
    TabOrder = 0
  end
end
