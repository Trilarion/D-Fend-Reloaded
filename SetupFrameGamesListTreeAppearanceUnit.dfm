object SetupFrameGamesListTreeAppearance: TSetupFrameGamesListTreeAppearance
  Left = 0
  Top = 0
  Width = 574
  Height = 352
  TabOrder = 0
  DesignSize = (
    574
    352)
  object TreeViewFontSizeLabel: TLabel
    Left = 16
    Top = 129
    Width = 59
    Height = 13
    Caption = 'Schriftgr'#246#223'e'
  end
  object TreeViewFontColorLabel: TLabel
    Left = 140
    Top = 129
    Width = 61
    Height = 13
    Caption = 'Schriftfarbe:'
  end
  object TreeViewGroupsLabel: TLabel
    Left = 16
    Top = 185
    Width = 137
    Height = 13
    Caption = 'Benutzerdefinierte Gruppen:'
  end
  object TreeViewGroupsInfoLabel: TLabel
    Left = 16
    Top = 288
    Width = 537
    Height = 60
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = False
    Caption = 
      'Die benutzerdefinierten Gruppen werden in der Baumstruktur als w' +
      'eitere Filterkategorien angeboten. Bei den Spielen k'#246'nnen Werte ' +
      'f'#252'r die Kategorien '#252'ber die "Benutzerdefinierten Informationen" ' +
      'definiert werden.'
    WordWrap = True
  end
  object TreeViewBackgroundRadioButton1: TRadioButton
    Left = 16
    Top = 57
    Width = 551
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Standard Hintergrundfarbe'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object TreeViewBackgroundRadioButton2: TRadioButton
    Left = 16
    Top = 80
    Width = 129
    Height = 17
    Caption = 'Hintergrundfarbe'
    TabOrder = 2
  end
  object TreeViewBackgroundColorBox: TColorBox
    Left = 151
    Top = 78
    Width = 130
    Height = 22
    ItemHeight = 16
    TabOrder = 3
    OnChange = TreeViewBackgroundColorBoxChange
  end
  object TreeViewFontSizeEdit: TSpinEdit
    Left = 16
    Top = 148
    Width = 59
    Height = 22
    MaxValue = 48
    MinValue = 1
    TabOrder = 4
    Value = 9
  end
  object TreeViewFontColorBox: TColorBox
    Left = 140
    Top = 148
    Width = 130
    Height = 22
    ItemHeight = 16
    TabOrder = 5
  end
  object TreeViewGroupsEdit: TRichEdit
    Left = 16
    Top = 204
    Width = 161
    Height = 78
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object UserKeysList: TBitBtn
    Left = 183
    Top = 202
    Width = 178
    Height = 25
    Caption = 'Existierende Benutzerschl'#252'ssel'
    TabOrder = 7
    OnClick = UserKeysListClick
  end
  object ReselectFilterCheckBox: TCheckBox
    Left = 16
    Top = 16
    Width = 551
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Zuletzt ausgew'#228'hlte Kategorie beim Start erneut ausw'#228'hlen'
    TabOrder = 0
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 184
    Top = 233
  end
end
