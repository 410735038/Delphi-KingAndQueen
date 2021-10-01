object Form1: TForm1
  Left = 804
  Top = 26
  Width = 652
  Height = 784
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 496
    Align = alClient
    Color = clSilver
    TabOrder = 0
    object Card1: TCard
      Left = 176
      Top = 168
      Width = 71
      Height = 96
      Value = 1
      Suit = Hearts
      ShowDeck = False
      DeckType = Standard1
    end
    object Card2: TCard
      Left = 408
      Top = 168
      Width = 71
      Height = 96
      Value = 1
      Suit = Hearts
      ShowDeck = False
      DeckType = Standard1
    end
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 68
      Height = 32
      Caption = 'Turn1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 576
      Top = 8
      Width = 55
      Height = 25
      Caption = 'HP:40'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 537
      Top = 40
      Width = 95
      Height = 25
      Caption = 'E-HP : 40'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 136
      Top = 280
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      Text = #35531#36984#25799#25351#20196
      OnClick = ComboBox1Click
      Items.Strings = (
        'Attack'
        'Recovery'
        'Knight')
    end
    object ComboBox2: TComboBox
      Left = 136
      Top = 328
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 1
      Text = #35531#36984#25799#25976#20540
      OnClick = ComboBox2Click
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10')
    end
    object ComboBox3: TComboBox
      Left = 376
      Top = 280
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 2
      Text = #35531#36984#25799#21151#33021#29260
      OnClick = ComboBox3Click
      Items.Strings = (
        'Weight')
    end
    object ComboBox4: TComboBox
      Left = 376
      Top = 328
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 3
      Text = #35531#36984#25799#25976#20540
      OnClick = ComboBox4Click
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10')
    end
    object Button1: TButton
      Left = 232
      Top = 368
      Width = 185
      Height = 73
      Caption = 'King And Queen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 0
      Top = 456
      Width = 249
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = #35531#36664#20837#32842#22825#35338#24687'...'
      OnKeyPress = Edit1KeyPress
    end
    object Panel2: TPanel
      Left = 248
      Top = 96
      Width = 145
      Height = 145
      TabOrder = 6
      object Card3: TCard
        Left = 64
        Top = 8
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = True
        DeckType = Standard1
      end
      object RG: TRadioGroup
        Left = 8
        Top = 0
        Width = 41
        Height = 105
        Items.Strings = (
          'S'
          'H'
          'D'
          'C')
        TabOrder = 0
        OnClick = RGClick
      end
      object Button7: TButton
        Left = 32
        Top = 112
        Width = 81
        Height = 25
        Caption = 'Report!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button7Click
      end
    end
    object Edit3: TEdit
      Left = 0
      Top = 48
      Width = 113
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '134.208.35.128'
    end
    object Panel3: TPanel
      Left = 232
      Top = 96
      Width = 185
      Height = 97
      TabOrder = 8
      object Button8: TButton
        Left = 8
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Spades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 104
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Hearts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 8
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Diamonds'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 104
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Clubs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button11Click
      end
    end
    object Panel4: TPanel
      Left = 328
      Top = 368
      Width = 305
      Height = 121
      Caption = #34928#24369#20540
      TabOrder = 9
      object Card4: TCard
        Left = 8
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card5: TCard
        Left = 32
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card6: TCard
        Left = 56
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card7: TCard
        Left = 80
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card8: TCard
        Left = 104
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card9: TCard
        Left = 128
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card10: TCard
        Left = 152
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card11: TCard
        Left = 176
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card12: TCard
        Left = 200
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Card13: TCard
        Left = 224
        Top = 16
        Width = 71
        Height = 96
        Value = 1
        Suit = Hearts
        ShowDeck = False
        DeckType = Standard1
      end
      object Button13: TButton
        Left = 0
        Top = 0
        Width = 17
        Height = 17
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button13Click
      end
    end
    object Panel5: TPanel
      Left = 152
      Top = 0
      Width = 345
      Height = 65
      TabOrder = 10
      object Edit2: TEdit
        Left = 16
        Top = 8
        Width = 153
        Height = 21
        TabOrder = 0
        Text = #26032#22686#25110#21034#38500#29609#23478
      end
      object Button2: TButton
        Left = 16
        Top = 32
        Width = 73
        Height = 25
        Caption = #26032#22686#29609#23478
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 96
        Top = 32
        Width = 75
        Height = 25
        Caption = #21034#38500#29609#23478
        TabOrder = 2
        OnClick = Button3Click
      end
      object ComboBox5: TComboBox
        Left = 184
        Top = 8
        Width = 153
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = #35531#26032#22686#19968#20301#29609#23478
        OnClick = ComboBox5Click
        Items.Strings = (
          '134.208.35.125'
          '134.208.35.128')
      end
      object Button4: TButton
        Left = 184
        Top = 32
        Width = 73
        Height = 25
        Caption = #30906#35469
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 264
        Top = 32
        Width = 73
        Height = 25
        Caption = #21462#28040
        TabOrder = 5
        OnClick = Button5Click
      end
    end
    object Button12: TButton
      Left = 560
      Top = 440
      Width = 73
      Height = 49
      Caption = #34928#24369#20540
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button12Click
    end
    object ComboBox6: TComboBox
      Left = 136
      Top = 328
      Width = 145
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 12
      Text = #35531#36984#25799#39438#22763
      OnClick = ComboBox6Click
      Items.Strings = (
        'Spades'
        'Hearts'
        'Diamonds'
        'Clubs')
    end
    object Button6: TButton
      Left = 96
      Top = 88
      Width = 449
      Height = 353
      Caption = 'Start!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -43
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button6Click
    end
    object Panel6: TPanel
      Left = -8
      Top = 176
      Width = 673
      Height = 193
      Caption = #36938#25138#32080#26463
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 496
    Width = 636
    Height = 249
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 1
  end
  object UDPC: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 3000
    Left = 488
    Top = 128
  end
  object UDPS: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 3000
    OnUDPRead = UDPSUDPRead
    Left = 528
    Top = 128
  end
end
