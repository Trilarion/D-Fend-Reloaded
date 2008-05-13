object WizardFinishFrame: TWizardFinishFrame
  Left = 0
  Top = 0
  Width = 592
  Height = 523
  TabOrder = 0
  DesignSize = (
    592
    523)
  object InfoLabel: TLabel
    Left = 8
    Top = 16
    Width = 569
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Bitte '#252'berpr'#252'fen Sie, ob die von D-Fend Reloaded erstellten Lauf' +
      'werksverkn'#252'pfungen Ihren W'#252'nschen entsprechen und best'#228'tigen Sie' +
      ' dann die Erstellung des neuen Profils mit "OK".'
    WordWrap = True
  end
  object Bevel: TBevel
    Left = 3
    Top = 56
    Width = 589
    Height = 18
    Anchors = [akLeft, akTop, akRight]
    Shape = bsBottomLine
  end
  object DriveSetupLabel: TLabel
    Left = 16
    Top = 93
    Width = 153
    Height = 13
    Caption = 'Aktuell konfigurierte Laufwerke:'
  end
  object ProfileEditorLabel: TLabel
    Left = 32
    Top = 438
    Width = 545
    Height = 67
    Anchors = [akLeft, akRight, akBottom]
    AutoSize = False
    Caption = 
      'Die gew'#228'hlte Vorlage f'#252'r das neue Profil enth'#228'lt potentielle Sic' +
      'herheitsrisiken (z.B. Autoexec-Abschnitte). Sollte die Vorlage n' +
      'icht von Ihnen selbst erstellt worden sein, so wird dringend emp' +
      'fohlen, folgende Abschnitte auf m'#246'glicherweise schadenverursache' +
      'nde Befehle zu untersuchen: Autoexec und Abschluss-Befehle, Benu' +
      'tzereinstellung, eingebundene Laufwerke.'
    Visible = False
    WordWrap = True
  end
  object MountingListView: TListView
    Left = 16
    Top = 112
    Width = 561
    Height = 246
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <>
    ReadOnly = True
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = MountingListViewDblClick
    OnKeyDown = MountingListViewKeyDown
  end
  object ProfileEditorCheckBox: TCheckBox
    Left = 16
    Top = 415
    Width = 561
    Height = 17
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Profileditor nach Abschluss des Assistenten '#246'ffnen'
    TabOrder = 1
  end
  object MountingAddButton: TBitBtn
    Left = 16
    Top = 364
    Width = 98
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Hinzuf'#252'gen...'
    TabOrder = 2
    OnClick = ButtonWork
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
  end
  object MountingEditButton: TBitBtn
    Tag = 1
    Left = 120
    Top = 364
    Width = 98
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Bearbeiten...'
    TabOrder = 3
    OnClick = ButtonWork
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object MountingDelButton: TBitBtn
    Tag = 2
    Left = 224
    Top = 364
    Width = 98
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'L'#246'schen'
    TabOrder = 4
    OnClick = ButtonWork
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object MountingDeleteAllButton: TBitBtn
    Tag = 3
    Left = 328
    Top = 364
    Width = 98
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Alle l'#246'schen'
    TabOrder = 5
    OnClick = ButtonWork
  end
  object MountingAutoCreateButton: TBitBtn
    Tag = 4
    Left = 432
    Top = 364
    Width = 101
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Autom. erstellen'
    TabOrder = 6
    OnClick = ButtonWork
  end
end
