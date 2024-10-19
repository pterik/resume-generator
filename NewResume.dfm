object FormNewResume: TFormNewResume
  Left = 0
  Top = 0
  Caption = #1053#1086#1074#1080#1081' '#1087#1077#1088#1077#1082#1083#1072#1076' '#1088#1077#1079#1102#1084#1077
  ClientHeight = 861
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  DesignSize = (
    984
    861)
  TextHeight = 21
  object BitBtnClose: TBitBtn
    Left = 855
    Top = 815
    Width = 120
    Height = 38
    Anchors = [akRight, akBottom]
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtnCloseClick
  end
  object BitBtnSave: TBitBtn
    Left = 8
    Top = 814
    Width = 161
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1047#1073#1077#1088#1110#1075#1090#1080' (F2)'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000019F9F
      9F089B9B9B12AAAAAA1BA5A5A525A6A6A62EA2A2A237A1A1A13FA3A3A346A4A4
      A44CA3A3A351A5A5A555A3A3A359A2A2A25BA3A3A35CA2A2A260A4A4A460A3A3
      A35CA5A5A55BA1A1A15AA5A5A555A3A3A351A4A4A44CA3A3A346A1A1A13FA2A2
      A237A2A2A22FA1A1A126A3A3A31CAAAAAA12AAAAAA09FFFFFF019D9D9D15A2A2
      A26CA3A3A3A2A4A4A4BCA4A4A4CDA3A3A3D9A3A3A3E0A4A4A4E6A3A3A3EAA3A3
      A3EDA4A4A4EFA4A4A4F1A4A4A4F2A3A3A3F3A3A3A3F3A4A4A4F4A4A4A4F4A3A3
      A3F3A3A3A3F3A3A3A3F3A4A4A4F1A3A3A3F0A3A3A3EEA4A4A4EAA4A4A4E6A3A3
      A3E1A3A3A3D9A3A3A3CEA3A3A3BEA3A3A3A4A3A3A372A3A3A319AAAAAA06A7A7
      A723A1906B689E813CE79F8038F5A08038F79F8039F99F803AFA9F8039FB9F81
      3AFB9E803AFC9F803AFC9F803AFC9F813AFD9F813AFD9F813AFD9F813AFD9F81
      3AFD9F813AFD9F813AFC9F803AFC9E803AFC9F813AFB9F8039FB9F803AFA9F80
      39F9A08038F79F8038F59E8038EF9F885395A1A1A12691919107000000000000
      00009E7B28CF9F7B29FF679293FF61949EFF61949EFF61949EFF61949EFF6194
      9EFF61949EFF61949EFF61949EFF61949EFF61949EFF61949EFF61949EFF6194
      9EFF61949EFF61949EFF61949EFF61949EFF61949EFF61949EFF61949EFF6194
      9EFF61949EFF61949EFF898351FF9E7A28FC9C7B291F00000000000000000000
      00009E7A28EF9F7B29FF8DC1DCFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9
      EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9
      EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9EFFF8BC9
      EFFF8BC9EFFF8BC9EFFF98956DFF9F7B29FF9D79283F00000000000000000000
      00009E7B29EF9F7B29FFF6F2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0A873FF9F7B29FF9D79283F00000000000000000000
      0000A27C2BEFA27D2BFFF6F2EBFFFFFFFFFFE1D9D3FFC3B4A8FFC3B4A8FFC3B4
      A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFC2B3A6FFC3B4A8FFC3B4
      A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFC3B4A8FFCDC0
      B5FFFFFFFFFFFFFFFFFFC2AA74FFA27D2BFFA17D283F00000000000000000000
      0000A47E2DEFA47F2DFFF6F3EBFFFFFFFFFFFDFDFDFFFCFCFBFFFCFCFBFFFCFC
      FBFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFF9A9999FF757474FFDEDD
      DDFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFFFCFCFBFFFDFC
      FCFFFFFFFFFFFFFFFFFFC3AB75FFA47F2DFFA57D2C3F00000000000000000000
      0000A68130EFA68130FFF6F3EBFFFFFFFFFFF8F6F5FFF1EEEBFFF1EEEBFFF1EE
      EBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFA3A19FFF222222FF1F1F
      1FFF7B7D7EFFF1F3F3FFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF4F1
      EEFFFFFFFFFFFFFFFFFFC4AC77FFA68130FFA581303F00000000000000000000
      0000A88331EFA88332FFF6F3EBFFFFFFFFFFE7E0DBFFCFC2B8FFCFC2B8FFCFC2
      B8FFCFC2B8FFCFC2B8FFCFC2B8FFCFC2B8FFCFC2B8FFA09790FF181818FF1F23
      25FF91AFBCFFC2E4F1FFC2CCCCFFCAC1B7FFCFC2B8FFCFC2B8FFCFC2B8FFD6CC
      C3FFFFFFFFFFFFFFFFFFC6AE78FFA88332FFAA81303F00000000000000000000
      0000AA8533EFAB8534FFF7F3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E4E5FF658190FFA3CE
      E3FFB5DFF2FFBDE3F3FFC5E7F4FFD0ECF6FFE7F6FAFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC7AF79FFAB8534FFAA85343F00000000000000000000
      0000AC8635EFAD8736FFF7F3ECFFFFFFFFFFEDE9E5FFDBD2CBFFDBD2CBFFDBD2
      CBFFDBD2CBFFDBD2CBFFDBD2CBFFDBD2CBFFDBD2CBFFD8D1CBFF9FD3EFFFA7D7
      F0FFAFDCF1FFB7E0F2FFBFE4F4FFB8E3F4FF65C7F0FF9ACEE2FFDBD2CBFFE1D9
      D3FFFFFFFFFFFFFFFFFFC9B07BFFAD8736FFAE85343F00000000000000000000
      0000AE8837EFAF8938FFF7F3ECFFFFFFFFFFF3EFEDFFE7E0DBFFE7E0DBFFE7E0
      DBFFE7E0DBFFE7E0DBFFE7E0DBFFE7E0DBFFE7E0DBFFE7E0DBFFA1D2EEFFA2D4
      F0FFAAD9F1FFB2DDF2FF8FD3F1FF69C6F3FF50BEF0FF3FB7E9FFC4D4D8FFEAE5
      E1FFFFFFFFFFFFFFFFFFCAB17CFFAF8938FFAE89383F00000000000000000000
      0000B18A39EFB18B3AFFF3EDE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD7F1FF9CD1
      EFFFA1D5F1FF7ECCF3FF4BBDEFFF54C0F1FF59C1F1FF43BBEEFF58C3EEFFFAFD
      FEFFFFFFFFFFFFFFFFFFC8AC73FFB18B3AFFB289383F00000000000000000000
      0000B38C3BEFB38D3CFFC4A566FFE1D2B2FFE2D4B6FFE2D4B6FFE2D4B6FFE2D4
      B6FFE2D4B6FFE2D4B6FFE2D4B6FFE2D4B6FFE2D4B6FFE2D4B6FFA9CCD9FF78C7
      EDFF2DB4E9FF6EC8F5FF57C0F1FF3AB8ECFF57C1F1FF4CBDEFFF37B7ECFF86CC
      E0FFE2D4B6FFD7C297FFB48E3DFFB38D3CFFB28D3C3F00000000000000000000
      0000B58E3DEFB68F3EFFB68F3EFFB68F3EFFB68F3EFFB68F3EFFB68F3EFFB68F
      3EFFB68F3EFFB68F3EFFB68F3EFFB68F3EFFB68F3EFFB68F3EFF9DA380FF4FBE
      F0FF2CB4EAFF35B7EBFF62C4F3FF42BAEEFF33B6EBFF54C0F1FF40BAEDFF2CB3
      E7FF929665FFB68F3EFFB68F3EFFB68F3EFFB68D3C3F00000000000000000000
      0000B79040EFB89140FFB89140FFB89140FFB89140FFB89140FFB89140FFB891
      40FFB89140FFB89140FFB89140FFB89140FFB89140FFB89140FFB89140FF7DB5
      BDFF48BCEEFF25B2E9FF4ABDEFFF4EBEF0FF2EB4EAFF38B7ECFF49BCEFFF33B6
      EBFF33ACD1FFB09248FFB89140FFB89140FFBA91403F00000000000000000000
      0000B99242EFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA92
      42FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFB397
      51FF69C0E4FF41BAEDFF25B2E9FF50BEF0FF3AB8ECFF1BAFE7FF42BAEDFF3CB9
      EDFF27B2E9FF55A3A7FFBA9242FFBA9242FFBA91403F00000000000000000000
      0000BB9444EFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC94
      44FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC94
      44FFA5A47AFF5DC2F2FF3AB8ECFF2DB4EAFF45BBEEFF25B2E9FF19AEE7FF43BA
      EEFF30B5EAFF1BAEE7FF869B76FFBC9444FFBE95443F00000000000000000000
      0000BD9645EFBE9646FFBE9646FFBE9646FFBE9646FFBE9646FFBE9646FFBE96
      46FFBE9646FFBE9646FFBE9646FFBE9646FFBE9646FFBE9646FFBE9646FFBE96
      46FFBE9646FF8FB5B0FF56C0F1FF33B6EBFF36B7ECFF31B5EBFF14ADE6FF26B2
      E9FF39B8ECFF23B1E8FF1FAAD8FFAE9854FFBE95443F00000000000000000000
      0000C09847EFC19848FFC19848FFC19848FFC19848FFC19848FFC19848FFC198
      48FFC19848FFC19848FFC19848FFC19848FFC19848FFC19848FFC19848FFC198
      48FFC19848FFBD9B50FF7AC2DDFF4FBEF0FF2EB4EAFF35B6EBFF1DAFE7FF0EAB
      E5FF31B5EBFF2CB4EAFF17AEE6FF5FAAB4FFC29D503F00000000000000000000
      0000C39949EFC39A4AFFCDAA60FFCDAD66FFCCAC65FFCCAC65FFCCAC65FFCCAC
      65FFCCAC65FFCCAC65FFCCAC65FFCCAC65FFCCAC65FFCCAC65FFCCAC65FFCCAC
      65FFCCAC65FFCCAC65FFBBB589FF6BC6F2FF48BCEFFF2DB4EAFF28B3E9FF10AB
      E5FF13ACE5FF34B6EAFF75BDD9FFC9CCCDFFB4B2C77C00000000000000000000
      0000C59B4BEFC8A052FFB7984DFF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF8DA593FF64C5F3FF42BAEDFF2AB3EAFF16AD
      E6FF2DB3E4FFB3D3DFFFDBDBDEFF6E6EB4FF111195F10F0F9A21000000000000
      0000C89D4DEFCCA458FFA58232FF9F7B29FF9F7C2BFFA58336FFA58336FFA583
      36FFA58336FFA58336FFA58336FFA58336FFA58336FFA58336FFA58336FFA583
      36FFA58336FFA58336FFA07D2CFF9E7C2DFF82BCCEFF5DC3F2FF3BB8ECFF70C5
      E6FFDCE3E5FFC1C1D8FF3838A2FF111196FF12129BFF1313A0B8000000000000
      0000CAA050EFCEA65AFFA58232FFA38032FFEFE9DBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F0E7FFA8873DFF9A884AFF80C8EBFFAFCDDBFFD4D4
      D5FF8080BAFF161696FF111198FF12129DFF1414A3FF1C1CAFCB000000000000
      0000CCA252EFD0A85CFFA58232FFB39757FFFFFFFFFFFFFFFFFFCCB98EFFC9B4
      86FFC9B486FFE0D5BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCA46BFF9F7B29FFC3B596FFB0B0BFFF4040
      A1FF111195FF12129AFF13139FFF1818A9FF2727BEB32121BC17000000000000
      0000CEA354EFD2AA5EFFA68333FFB49858FFFFFFFFFFFFFFFFFFA58337FF9F7B
      29FF9F7B29FFC9B586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDA46CFF9F7B29FFCBA760FF554B95FF1111
      98FF12129DFF1313A2FF2725AEFF3F3AB7750000000000000000000000000000
      0000D1A556EFD4AC60FFAB8738FFB99C5CFFFFFFFFFFFFFFFFFFAB883BFFA580
      2FFFA5802FFFCCB789FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1A86FFFA5802FFFCEA85EFFBD9660FF2B28
      A9FF1717A8FF4B42A5FFA8887197000000000000000000000000000000000000
      0000D3A757EFD6AE61FFB18D3DFFBEA060FFFFFFFFFFFFFFFFFFB18D41FFAB86
      34FFAB8634FFD0BA8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5AB73FFAB8634FFD1AB61FFD3A758FFB793
      68FF9B7F7FFFCFA45AB2AAAA5503000000000000000000000000000000000000
      0000D5A959EFD8AF63FFB79143FFC2A465FFFFFFFFFFFFFFFFFFB79246FFB28B
      3AFFB28B3AFFD3BD90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCAAF77FFB28B3AFFD4AD63FFD5A95AFFD5A9
      5AFFD5A959CAD0A2450B00000000000000000000000000000000000000000000
      0000D8AB5BC6DBB165FFBD9648FFC7A969FFFFFFFFFFFFFFFFFFBC974CFFB891
      40FFB89140FFD7C193FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCEB37BFFB89140FFD6B066FFD8AB5CFFD8AB
      5CCDDCAD5C160000000000000000000000000000000000000000000000000000
      0000D9AC5A22DAAE61A8C09849BFCCAC6DBFFFFFFFBFFFFFFFBFFFFFFFBFFFFF
      FFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFFFFBFFFFF
      FFBFFFFFFFBFFFFFFFBFFFFFFFBFD1B67EBFBD9544BFD4AA5EAFD7AA5C61CC99
      3305000000000000000000000000000000000000000000000000}
    ModalResult = 1
    TabOrder = 1
    OnClick = BitBtnSaveClick
  end
  object PageControlUA: TPageControl
    Left = 2
    Top = 4
    Width = 980
    Height = 320
    ActivePage = TabSheetFooterUA
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 2
    OnChange = PageControlUAChange
    object TabSheetMainUA: TTabSheet
      Caption = #1056#1077#1079#1102#1084#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      object Label7: TLabel
        Left = 185
        Top = 3
        Width = 52
        Height = 21
        Caption = #1055#1086#1089#1072#1076#1072
        Enabled = False
      end
      object Label8: TLabel
        Left = 461
        Top = 3
        Width = 68
        Height = 21
        Caption = #1055#1086#1074#1085#1110#1089#1090#1102
        Enabled = False
      end
      object Label9: TLabel
        Left = 138
        Top = 29
        Width = 99
        Height = 21
        Caption = #1052#1110#1089#1094#1077' '#1088#1086#1073#1086#1090#1080
        Enabled = False
      end
      object Label10: TLabel
        Left = 461
        Top = 29
        Width = 70
        Height = 21
        Caption = #1058#1077#1083#1077#1092#1086#1085#1080
        Enabled = False
      end
      object Label12: TLabel
        Left = 3
        Top = 6
        Width = 39
        Height = 21
        Caption = #1052#1086#1074#1072
        Enabled = False
      end
      object Label13: TLabel
        Left = 3
        Top = 32
        Width = 45
        Height = 21
        Caption = #1056#1077#1075#1110#1086#1085
        Enabled = False
      end
      object Label11: TLabel
        Left = 3
        Top = 62
        Width = 68
        Height = 21
        Caption = #1042#1074#1077#1076#1077#1085#1085#1103
        Enabled = False
      end
      object EditNameUA: TEdit
        Left = 243
        Top = 0
        Width = 212
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'EditNameUA'
      end
      object EditOpportunityUA: TEdit
        Left = 535
        Top = 0
        Width = 432
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'EditOpportunityUA'
      end
      object EditPlaceUA: TEdit
        Left = 243
        Top = 34
        Width = 212
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'EditPlaceUA'
      end
      object EditPhonesUA: TEdit
        Left = 534
        Top = 34
        Width = 435
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        Text = 'EditPhonesUA'
      end
      object EditLangUA: TEdit
        Left = 60
        Top = 0
        Width = 72
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 4
        Text = 'RU'
      end
      object EditRegionUA: TEdit
        Left = 60
        Top = 35
        Width = 72
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 5
        Text = 'Template'
      end
      object RichEditorUA: TRichEdit
        Left = 3
        Top = 84
        Width = 966
        Height = 171
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditorUA')
        ParentFont = False
        TabOrder = 6
      end
      object CBMainWordWrapUA: TCheckBox
        Left = 3
        Top = 261
        Width = 88
        Height = 17
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CBMainWordWrapUAClick
      end
    end
    object TabSheetFooterUA: TTabSheet
      Caption = #1044#1072#1083#1110
      ImageIndex = 11
      object StaticText1: TStaticText
        Left = 3
        Top = 2
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 1'
        Enabled = False
        TabOrder = 0
      end
      object EditArticle1UA: TEdit
        Left = 85
        Top = 0
        Width = 398
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'EditArticle1UA'
      end
      object EditArticle2UA: TEdit
        Left = 574
        Top = 0
        Width = 395
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'EditArticle2UA'
      end
      object EditArticle3UA: TEdit
        Left = 85
        Top = 144
        Width = 401
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        Text = 'EditArticle3UA'
      end
      object EditArticle4UA: TEdit
        Left = 577
        Top = 144
        Width = 392
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 4
        Text = 'EditArticle4UA'
      end
      object StaticText6: TStaticText
        Left = 3
        Top = 148
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 3'
        Enabled = False
        TabOrder = 5
      end
      object StaticText7: TStaticText
        Left = 489
        Top = 4
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 2'
        Enabled = False
        TabOrder = 6
      end
      object StaticText8: TStaticText
        Left = 492
        Top = 148
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 4'
        Enabled = False
        TabOrder = 7
      end
      object RichEditArticle1UA: TRichEdit
        Left = 3
        Top = 51
        Width = 480
        Height = 89
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle1UA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object RichEditArticle2UA: TRichEdit
        Left = 489
        Top = 51
        Width = 480
        Height = 89
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle2UA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 9
      end
      object RichEditArticle3UA: TRichEdit
        Left = 3
        Top = 194
        Width = 483
        Height = 82
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle3UA')
        ParentFont = False
        TabOrder = 10
      end
      object RichEditArticle4UA: TRichEdit
        Left = 492
        Top = 196
        Width = 477
        Height = 82
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle4UA')
        ParentFont = False
        TabOrder = 11
      end
      object CBCV_footer1UA: TCheckBox
        Left = 88
        Top = 30
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        Enabled = False
        TabOrder = 12
      end
      object CBCV_footer2UA: TCheckBox
        Left = 574
        Top = 30
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        Enabled = False
        TabOrder = 13
      end
      object CBCV_footer3UA: TCheckBox
        Left = 84
        Top = 176
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        Enabled = False
        TabOrder = 14
      end
      object CBCV_footer4UA: TCheckBox
        Left = 577
        Top = 176
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        Enabled = False
        TabOrder = 15
      end
    end
    object TabSheetCVUA: TTabSheet
      Caption = 'CV'
      ImageIndex = 12
      object StaticText12: TStaticText
        Left = 2
        Top = 3
        Width = 125
        Height = 25
        Caption = #1042#1074#1077#1076#1077#1085#1085#1103' '#1076#1083#1103' CV'
        Enabled = False
        TabOrder = 0
      end
      object RichEditCVUA: TRichEdit
        Left = 3
        Top = 24
        Width = 966
        Height = 236
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object CBCVWordWrapUA: TCheckBox
        Left = 16
        Top = 264
        Width = 88
        Height = 16
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CBCVWordWrapUAClick
      end
    end
    object TabSheetCLUA: TTabSheet
      Caption = #1057'. '#1083#1080#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object RichEditCLUA: TRichEdit
        Left = 6
        Top = 28
        Width = 966
        Height = 236
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object StaticText11: TStaticText
        Left = 6
        Top = 2
        Width = 170
        Height = 25
        Caption = #1057#1091#1087#1088#1086#1074#1086#1076#1078#1091#1102#1095#1080#1081' '#1083#1080#1089#1090
        Enabled = False
        TabOrder = 1
      end
      object CBCLWordWrapUA: TCheckBox
        Left = 24
        Top = 265
        Width = 88
        Height = 16
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CBCLWordWrapUAClick
      end
    end
    object TabSheetJob1UA: TTabSheet
      Caption = 'Job 1'
      Enabled = False
      ImageIndex = 3
      object Label17: TLabel
        Left = 492
        Top = 3
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label18: TLabel
        Left = 213
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label23: TLabel
        Left = 3
        Top = 38
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label24: TLabel
        Left = 486
        Top = 161
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Label25: TLabel
        Left = 25
        Top = 161
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label26: TLabel
        Left = 41
        Top = 215
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Edit1DatesUA: TEdit
        Left = 4
        Top = 3
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit1DatesUA'
      end
      object Edit1NameUA: TEdit
        Left = 261
        Top = 0
        Width = 220
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit1NameUA'
      end
      object Edit1CompanyUA: TEdit
        Left = 565
        Top = 0
        Width = 373
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit1CompanyUA'
      end
      object Memo1SkillsUA: TMemo
        Left = 531
        Top = 161
        Width = 438
        Height = 117
        Enabled = False
        Lines.Strings = (
          'Memo1SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit1RespUA: TRichEdit
        Left = 81
        Top = 35
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1RespUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit1OtherUA: TRichEdit
        Left = 81
        Top = 221
        Width = 444
        Height = 56
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit1BenefitsUA: TRichEdit
        Left = 81
        Top = 161
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob2UA: TTabSheet
      Caption = 'Job 2'
      ImageIndex = 4
      object Label27: TLabel
        Left = 212
        Top = 4
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label54: TLabel
        Left = 470
        Top = 6
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label66: TLabel
        Left = 3
        Top = 41
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label110: TLabel
        Left = 486
        Top = 167
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Label111: TLabel
        Left = 24
        Top = 167
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label112: TLabel
        Left = 39
        Top = 213
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Edit2DatesUA: TEdit
        Left = 4
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit2DatesUA'
      end
      object Edit2NameUA: TEdit
        Left = 260
        Top = 3
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit2NameUA'
      end
      object Edit2CompanyUA: TEdit
        Left = 543
        Top = 3
        Width = 394
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit2CompanyUA'
      end
      object Memo2SkillsUA: TMemo
        Left = 531
        Top = 164
        Width = 438
        Height = 110
        Enabled = False
        Lines.Strings = (
          'Memo2SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit2RespUA: TRichEdit
        Left = 81
        Top = 38
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit2OtherUA: TRichEdit
        Left = 81
        Top = 224
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit2OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit2BenefitsUA: TRichEdit
        Left = 82
        Top = 164
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit2BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob3UA: TTabSheet
      Caption = 'Job 3'
      ImageIndex = 5
      object Label28: TLabel
        Left = 212
        Top = 2
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label55: TLabel
        Left = 458
        Top = 3
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label67: TLabel
        Left = 3
        Top = 38
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label113: TLabel
        Left = 25
        Top = 161
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label114: TLabel
        Left = 41
        Top = 213
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label128: TLabel
        Left = 487
        Top = 161
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit3DatesUA: TEdit
        Left = 4
        Top = 3
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit3DatesUA'
      end
      object Edit3NameUA: TEdit
        Left = 256
        Top = 0
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit3NameUA'
      end
      object Edit3CompanyUA: TEdit
        Left = 531
        Top = 0
        Width = 407
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit3CompanyUA'
      end
      object Memo3SkillsUA: TMemo
        Left = 531
        Top = 161
        Width = 438
        Height = 117
        Enabled = False
        Lines.Strings = (
          'Memo3SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit3RespUA: TRichEdit
        Left = 81
        Top = 35
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit3OtherUA: TRichEdit
        Left = 81
        Top = 221
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit3OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit3BenefitsUA: TRichEdit
        Left = 82
        Top = 161
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit3BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob4UA: TTabSheet
      Caption = 'Job 4'
      ImageIndex = 6
      object Label29: TLabel
        Left = 212
        Top = 5
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label56: TLabel
        Left = 471
        Top = 4
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label68: TLabel
        Left = 3
        Top = 37
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label115: TLabel
        Left = 27
        Top = 167
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label116: TLabel
        Left = 43
        Top = 219
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label129: TLabel
        Left = 489
        Top = 164
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit4DatesUA: TEdit
        Left = 4
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit4DatesUA'
      end
      object Edit4NameUA: TEdit
        Left = 258
        Top = 3
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit4NameUA'
      end
      object Edit4CompanyUA: TEdit
        Left = 544
        Top = 3
        Width = 394
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit4CompanyUA'
      end
      object Memo4SkillsUA: TMemo
        Left = 531
        Top = 164
        Width = 438
        Height = 110
        Enabled = False
        Lines.Strings = (
          'Memo4SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit4RespUA: TRichEdit
        Left = 83
        Top = 38
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit4OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit4OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit4BenefitsUA: TRichEdit
        Left = 84
        Top = 162
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit4BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob5UA: TTabSheet
      Caption = 'Job 5'
      ImageIndex = 7
      object Label30: TLabel
        Left = 210
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label57: TLabel
        Left = 466
        Top = 3
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label69: TLabel
        Left = 3
        Top = 36
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label118: TLabel
        Left = 25
        Top = 164
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label119: TLabel
        Left = 41
        Top = 222
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label130: TLabel
        Left = 487
        Top = 161
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit5DatesUA: TEdit
        Left = 3
        Top = 1
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit5DatesUA'
      end
      object Edit5NameUA: TEdit
        Left = 258
        Top = 0
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit5NameUA'
      end
      object Edit5CompanyUA: TEdit
        Left = 539
        Top = 0
        Width = 398
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit5CompanyUA'
      end
      object Memo5SkillsUA: TMemo
        Left = 531
        Top = 161
        Width = 438
        Height = 117
        Enabled = False
        Lines.Strings = (
          'Memo5SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit5RespUA: TRichEdit
        Left = 81
        Top = 35
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit5OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit5OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit5BenefitsUA: TRichEdit
        Left = 82
        Top = 161
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit5BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob6UA: TTabSheet
      Caption = 'Job 6'
      ImageIndex = 8
      object Label31: TLabel
        Left = 207
        Top = 1
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label58: TLabel
        Left = 458
        Top = 3
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label70: TLabel
        Left = 3
        Top = 41
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label120: TLabel
        Left = 25
        Top = 162
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label121: TLabel
        Left = 42
        Top = 222
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label131: TLabel
        Left = 487
        Top = 162
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit6DatesUA: TEdit
        Left = 3
        Top = 1
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit6DatesUA'
      end
      object Edit6NameUA: TEdit
        Left = 255
        Top = 1
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit6NameUA'
      end
      object Edit6CompanyUA: TEdit
        Left = 531
        Top = 3
        Width = 407
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit6CompanyUA'
      end
      object Memo6SkillsUA: TMemo
        Left = 531
        Top = 159
        Width = 438
        Height = 119
        Enabled = False
        Lines.Strings = (
          'Memo6SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit6RespUA: TRichEdit
        Left = 81
        Top = 36
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit6OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit6OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit6BenefitsUA: TRichEdit
        Left = 82
        Top = 162
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit6BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob7UA: TTabSheet
      Caption = 'Job 7'
      ImageIndex = 9
      object Label32: TLabel
        Left = 206
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label59: TLabel
        Left = 458
        Top = 3
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label71: TLabel
        Left = 3
        Top = 35
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label122: TLabel
        Left = 23
        Top = 161
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label123: TLabel
        Left = 39
        Top = 208
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label132: TLabel
        Left = 487
        Top = 161
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit7DatesUA: TEdit
        Left = 4
        Top = 0
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit7DatesUA'
      end
      object Edit7NameUA: TEdit
        Left = 254
        Top = 0
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit7NameUA'
      end
      object Edit7CompanyUA: TEdit
        Left = 531
        Top = 0
        Width = 407
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit7CompanyUA'
      end
      object Memo7SkillsUA: TMemo
        Left = 531
        Top = 161
        Width = 438
        Height = 117
        Enabled = False
        Lines.Strings = (
          'Memo7SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit7RespUA: TRichEdit
        Left = 81
        Top = 35
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit7OtherUA: TRichEdit
        Left = 82
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit7OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit7BenefitsUA: TRichEdit
        Left = 82
        Top = 161
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit7BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob8UA: TTabSheet
      Caption = 'Job 8'
      ImageIndex = 10
      object Label33: TLabel
        Left = 210
        Top = 6
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label60: TLabel
        Left = 464
        Top = 6
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label72: TLabel
        Left = 3
        Top = 37
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label126: TLabel
        Left = 25
        Top = 169
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label127: TLabel
        Left = 41
        Top = 222
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label133: TLabel
        Left = 487
        Top = 161
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit8DatesUA: TEdit
        Left = 4
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit8DatesUA'
      end
      object Edit8NameUA: TEdit
        Left = 258
        Top = 3
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit8NameUA'
      end
      object Edit8CompanyUA: TEdit
        Left = 537
        Top = 3
        Width = 400
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit8CompanyUA'
      end
      object Memo8SkillsUA: TMemo
        Left = 531
        Top = 161
        Width = 438
        Height = 117
        Enabled = False
        Lines.Strings = (
          'Memo8SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit8RespUA: TRichEdit
        Left = 81
        Top = 35
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit8OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit8OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit8BenefitsUA: TRichEdit
        Left = 82
        Top = 161
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit8BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob9UA: TTabSheet
      Caption = 'Job 9'
      ImageIndex = 11
      object Label34: TLabel
        Left = 211
        Top = 5
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label61: TLabel
        Left = 470
        Top = 6
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label73: TLabel
        Left = 3
        Top = 37
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label124: TLabel
        Left = 25
        Top = 171
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label125: TLabel
        Left = 41
        Top = 230
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label134: TLabel
        Left = 487
        Top = 163
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit9DatesUA: TEdit
        Left = 4
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit9DatesUA'
      end
      object Edit9NameUA: TEdit
        Left = 259
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit9NameUA'
      end
      object Edit9CompanyUA: TEdit
        Left = 543
        Top = 3
        Width = 395
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit9CompanyUA'
      end
      object Memo9SkillsUA: TMemo
        Left = 531
        Top = 164
        Width = 438
        Height = 114
        Enabled = False
        Lines.Strings = (
          'Memo9SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit9RespUA: TRichEdit
        Left = 81
        Top = 37
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit9OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit9OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit9BenefitsUA: TRichEdit
        Left = 82
        Top = 163
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit9BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object TabSheetJob10UA: TTabSheet
      Caption = 'Job 10'
      ImageIndex = 12
      object Label35: TLabel
        Left = 212
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
        Enabled = False
      end
      object Label62: TLabel
        Left = 468
        Top = 5
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        Enabled = False
      end
      object Label63: TLabel
        Left = 3
        Top = 36
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
        Enabled = False
      end
      object Label64: TLabel
        Left = 25
        Top = 162
        Width = 50
        Height = 21
        Caption = #1042#1080#1075#1086#1076#1072
        Enabled = False
      end
      object Label65: TLabel
        Left = 41
        Top = 221
        Width = 34
        Height = 21
        Caption = #1030#1085#1096#1077
        Enabled = False
      end
      object Label117: TLabel
        Left = 487
        Top = 162
        Width = 39
        Height = 21
        Caption = #1057#1082#1110#1083#1080
        Enabled = False
      end
      object Edit10DatesUA: TEdit
        Left = 4
        Top = 2
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Edit10DatesUA'
      end
      object Edit10NameUA: TEdit
        Left = 260
        Top = 1
        Width = 200
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Edit10NameUA'
      end
      object Edit10CompanyUA: TEdit
        Left = 541
        Top = 3
        Width = 397
        Height = 29
        Enabled = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Edit10CompanyUA'
      end
      object Memo10SkillsUA: TMemo
        Left = 529
        Top = 164
        Width = 440
        Height = 110
        Enabled = False
        Lines.Strings = (
          'Memo10SkillsUA')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit10RespUA: TRichEdit
        Left = 81
        Top = 36
        Width = 888
        Height = 120
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object RichEdit10OtherUA: TRichEdit
        Left = 81
        Top = 222
        Width = 444
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit10OtherUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object RichEdit10BenefitsUA: TRichEdit
        Left = 82
        Top = 162
        Width = 399
        Height = 57
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit10BenefitsUA')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
  end
  object BitBtnCopy: TBitBtn
    Left = 182
    Top = 815
    Width = 331
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1057#1082#1086#1087#1110#1102#1074#1072#1090#1080' '#1090#1072' '#1055#1077#1088#1077#1082#1083#1072#1089#1090#1080' '#1047#1072#1075#1086#1083#1086#1074#1086#1082
    Glyph.Data = {
      B6070000424DB60700000000000036040000280000001E0000001C0000000100
      0800000000008003000000000000000000000001000000000000040204008482
      84005CC2A400ACE2D40044464400C4F2E400C4C2C40034B28C0074D2B400A4A2
      A4006462640024222400DCE2DC00E4F2EC00F4FAF40044BA9C0094D6C4007472
      7400BCEADC00A4DACC009492940074C6AC003432340014121400B4B2B400D4D2
      D4006CCEAC0054565400D4EEE400E4F6F400BCE6D40044BA940084D2BC00646A
      6C00ECFEFC0054BEA40094DECC007C7A7C000C0A0C008C8A8C0064C6AC003CB6
      9400ACAAAC002C2A2C0054BE9C00BCEEE400ACDED4009C9A9C003C3A3C00F4F2
      F400FCFAFC004C4E4C00DCF2EC00E4E2E4004CBE9C009CDACC0074767400A4DE
      CC001C1A1C00BCBABC00DCDADC005C5E5C00ECEAEC00BCE6DC0084D6BC006C6E
      6C00040604008486840064C2A400B4E2D400CCF2E400CCCECC003CB28C007CD2
      B400A4A6A4006466640024262400E4F6EC004CBA9C009CDAC400C4EADC009496
      940084CEB4003436340014161400D4D6D4006CCEB4005C5A5C00ECF6F4008CD2
      BC006C6A6C00F4FEFC009CDECC00847A7C000C0E0C008C8E8C006CC6AC0044B6
      9400ACAEAC002C2E2C00CCEAE4009C9E9C003C3E3C00F4F6F400FCFEFC005452
      5400E4E6E4007C767400ACDECC00BCBEBC00ECEEEC00C4E6DC00700067003B00
      29007C002A002E006A007000650067003B002A002E006A00700067003B007C00
      4700490046002000670072006100700068006900630073002000660072006F00
      6D0020004400650076004500780070007200650073007300200028002A002E00
      6700690066003B0029007C002A002E006700690066003B007C00540049004600
      46002000670072006100700068006900630073002000660072006F006D002000
      4400650076004500780070007200650073007300200028002A002E0074006900
      660066003B002A002E007400690066003B0029007C002A002E00740069006600
      66003B002A002E007400690066003B007C0050004E0047002000670072006100
      700068006900630073002000660072006F006D00200044006500760045007800
      70007200650073007300200028002A002E0070006E0067003B0029007C002A00
      2E0070006E0067003B007C0042004D0050002000670072006100700068006900
      630073002000660072006F006D00200044006500760045007800700072006500
      73007300200028002A002E0062006D0070003B0029007C002A002E0062006D00
      70003B007C0050006F0072007400610062006C00650020006E00650074007700
      6F0072006B002000670072006100700068006900630073002000280041006C00
      70006800610043006F006E00740072006F006C0073002900200028002A002E00
      70006E00670029007C002A002E0070006E0067007C004200690074006D006100
      70007300200028002A002E0062006D00700029007C002A002E00686868686868
      6868686868686868686868686868686868686868686868680000686868686868
      6868683541111111111111111111111111111111114B18680000686868686868
      6832684717175E5E5E5E5E5E5E5E5E5E5E5E5E5E544225680000686868686868
      686868193A3D47471947191947191947191947192F2643680000686868686868
      6832681917416868686868686868686868686868064227680000686810446028
      28024019175A32094C30305330533053306357681826016800006868200F4428
      44234055174B68094C53161653165316536357683B42436800006868594E3468
      68686819174168686868686868686868686868683B42276800003268594E0D68
      34341D55175A683E471919191919191919473C683B42436800006868590F4D68
      23071A555E5A685F0017265E265E265E5E0066683B42276800006868594E3468
      4F5903191721686D4B11411111413811114127683B26016800006868590F0D68
      68686855174168686868686868686868686868683B42436800003268594E4D68
      45131219175A68475F2F14512F51512F51144A683B26016800006868591F1D68
      4E071A55175A68270026424242002642420053683B42436800006868100F3468
      643F1C19174B683C2A6218181818621818623B686D26016800003268204E0D68
      68686855174168686868686868686868686868682A42436800006868590F0D68
      2015375517216818041B6969333C320A69696969161701680000686859611D68
      440F0819175A6814170B0B0B3A556863543A0B4C4C17096800003268100F0D68
      325832555E4168316A6A3E6A6A323253306A3E3D17536E6800006868204E3468
      0E580E55175A326868686868686831166668385E1655683200006868594E4D68
      28610855174168686868686868686853305A26161968686800006868204E3468
      20602419540A5547191919191919622B4C1716556832686800006868594E3468
      686868471717175E5E5E5E5E5E172654175355686868686800006868204E3468
      68323235414111115D255D2538111111516E68686868686800006868594E5868
      68686868686868222D462D2D6868686868686868686868680000686859364F03
      2E45032E6C2E6C44616161453232683268686868686868680000686820616161
      2929611F2929294E2C44646868686868686868686868686800006868641E3F50
      3F501E3F6F3F6F3F6F0E68686868686868686868686868680000}
    TabOrder = 3
    OnClick = BitBtnCopyClick
  end
  object PageControlTR: TPageControl
    Left = 2
    Top = 326
    Width = 980
    Height = 483
    ActivePage = TabSheetFooterTR
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 4
    OnChange = PageControlTRChange
    object TabSheetMainTR: TTabSheet
      Caption = #1056#1077#1079#1102#1084#1077
      DesignSize = (
        972
        444)
      object Label1: TLabel
        Left = 233
        Top = 2
        Width = 52
        Height = 21
        Caption = #1055#1086#1089#1072#1076#1072
      end
      object Label2: TLabel
        Left = 501
        Top = 2
        Width = 68
        Height = 21
        Caption = #1055#1086#1074#1085#1110#1089#1090#1102
      end
      object Label3: TLabel
        Left = 186
        Top = 35
        Width = 99
        Height = 21
        Caption = #1052#1110#1089#1094#1077' '#1088#1086#1073#1086#1090#1080
      end
      object Label4: TLabel
        Left = 3
        Top = 71
        Width = 70
        Height = 21
        Caption = #1058#1077#1083#1077#1092#1086#1085#1080
      end
      object Label5: TLabel
        Left = 3
        Top = 98
        Width = 68
        Height = 21
        Caption = #1042#1074#1077#1076#1077#1085#1085#1103
      end
      object Label6: TLabel
        Left = 3
        Top = 2
        Width = 39
        Height = 21
        Caption = #1052#1086#1074#1072
      end
      object Label14: TLabel
        Left = 3
        Top = 35
        Width = 45
        Height = 21
        Caption = #1056#1077#1075#1110#1086#1085
      end
      object EditNameTR: TEdit
        Left = 291
        Top = 0
        Width = 204
        Height = 29
        TabOrder = 0
        Text = 'EditNameTR'
      end
      object EditOpportunityTR: TEdit
        Left = 575
        Top = 0
        Width = 394
        Height = 29
        TabOrder = 1
        Text = 'EditOpportunityTR'
      end
      object EditPlaceTR: TEdit
        Left = 291
        Top = 35
        Width = 444
        Height = 29
        TabOrder = 2
        Text = 'EditPlaceTR'
      end
      object EditPhonesTR: TEdit
        Left = 79
        Top = 70
        Width = 506
        Height = 29
        TabOrder = 3
        Text = 'EditPhonesTR'
      end
      object CBRegionTR: TComboBox
        Left = 60
        Top = 35
        Width = 120
        Height = 29
        TabOrder = 5
        Text = 'CBRegionTR'
        OnChange = CBRegionTRChange
      end
      object CBLangTR: TComboBox
        Left = 60
        Top = 0
        Width = 120
        Height = 29
        TabOrder = 6
        Text = 'CBLangTR'
        OnChange = CBLangTRChange
      end
      object CBPhones: TComboBox
        Left = 591
        Top = 70
        Width = 332
        Height = 29
        TabOrder = 7
        Text = 'CBPhones'
      end
      object BitBtn2: TBitBtn
        Left = 929
        Top = 74
        Width = 33
        Height = 25
        Caption = '+'
        TabOrder = 8
        OnClick = BitBtn2Click
      end
      object RichEditorTR: TRichEdit
        Left = 4
        Top = 120
        Width = 965
        Height = 300
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditorTR')
        ParentFont = False
        TabOrder = 4
      end
      object CBMainWordWrapTR: TCheckBox
        Left = 3
        Top = 426
        Width = 88
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = CBMainWordWrapTRClick
      end
    end
    object TabSheetFooterTR: TTabSheet
      Caption = #1044#1072#1083#1110
      ImageIndex = 14
      object StaticText3: TStaticText
        Left = 12
        Top = 11
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 1'
        TabOrder = 0
      end
      object EditArticle1TR: TEdit
        Left = 89
        Top = 0
        Width = 393
        Height = 29
        TabOrder = 1
        Text = 'EditArticle1TR'
      end
      object StaticText5: TStaticText
        Left = 488
        Top = 3
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 2'
        TabOrder = 2
      end
      object EditArticle2TR: TEdit
        Left = 573
        Top = 0
        Width = 396
        Height = 29
        TabOrder = 3
        Text = 'EditArticle2TR'
      end
      object CBCV_footer1TR: TCheckBox
        Left = 89
        Top = 30
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        TabOrder = 4
      end
      object CBCV_footer2TR: TCheckBox
        Left = 573
        Top = 30
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        TabOrder = 5
      end
      object RichEditArticle1TR: TRichEdit
        Left = 0
        Top = 58
        Width = 480
        Height = 150
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle1TR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
      object RichEditArticle2TR: TRichEdit
        Left = 486
        Top = 57
        Width = 480
        Height = 154
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle2TR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object StaticText2: TStaticText
        Left = -1
        Top = 220
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 3'
        TabOrder = 8
      end
      object EditArticle3TR: TEdit
        Left = 84
        Top = 217
        Width = 395
        Height = 29
        TabOrder = 9
        Text = 'EditArticle3TR'
      end
      object StaticText4: TStaticText
        Left = 485
        Top = 217
        Width = 79
        Height = 25
        Caption = #1053#1072#1074#1080#1095#1086#1082' 4'
        TabOrder = 10
      end
      object EditArticle4TR: TEdit
        Left = 564
        Top = 217
        Width = 402
        Height = 29
        TabOrder = 11
        Text = 'EditArticle4TR'
      end
      object CBCV_footer3TR: TCheckBox
        Left = 86
        Top = 252
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        TabOrder = 12
      end
      object CBCV_footer4TR: TCheckBox
        Left = 564
        Top = 252
        Width = 166
        Height = 17
        Caption = #1053#1077' '#1076#1086#1073#1072#1074#1083#1103#1090#1080' '#1074' CV'
        TabOrder = 13
      end
      object RichEditArticle3TR: TRichEdit
        Left = 0
        Top = 275
        Width = 479
        Height = 150
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle3TR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 14
      end
      object RichEditArticle4TR: TRichEdit
        Left = 485
        Top = 275
        Width = 481
        Height = 150
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEditArticle4TR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 15
      end
    end
    object TabSheetCVTR: TTabSheet
      Caption = 'CV'
      ImageIndex = 12
      DesignSize = (
        972
        444)
      object RichEditCVTR: TRichEdit
        Left = 3
        Top = 34
        Width = 958
        Height = 384
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object StaticText9: TStaticText
        Left = 3
        Top = 3
        Width = 170
        Height = 25
        Caption = #1057#1091#1087#1088#1086#1074#1086#1076#1078#1091#1102#1095#1080#1081' '#1083#1080#1089#1090
        TabOrder = 1
      end
      object CBCVWordWrapTR: TCheckBox
        Left = 3
        Top = 424
        Width = 88
        Height = 17
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CBCVWordWrapTRClick
      end
    end
    object TabSheetCLTR: TTabSheet
      Caption = #1057'. '#1083#1080#1089#1090
      ImageIndex = 13
      DesignSize = (
        972
        444)
      object RichEditCLTR: TRichEdit
        Left = 3
        Top = 28
        Width = 966
        Height = 392
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object StaticText10: TStaticText
        Left = 3
        Top = 2
        Width = 89
        Height = 25
        Caption = 'Cover Letter'
        TabOrder = 1
      end
      object CBCLWordWrapTR: TCheckBox
        Left = 11
        Top = 427
        Width = 88
        Height = 17
        Caption = 'Word Wrap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CBCLWordWrapTRClick
      end
    end
    object TabSheetJob1TR: TTabSheet
      Caption = 'Job 1'
      ImageIndex = 3
      DesignSize = (
        972
        444)
      object Label15: TLabel
        Left = 348
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label16: TLabel
        Left = 323
        Top = 42
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label19: TLabel
        Left = 2
        Top = 78
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label20: TLabel
        Left = 4
        Top = 244
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label21: TLabel
        Left = 531
        Top = 268
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Label22: TLabel
        Left = 3
        Top = 346
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Edit1DatesTR: TEdit
        Left = 3
        Top = 3
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 3
        Text = 'Edit1DatesTR'
      end
      object Edit1NameTR: TEdit
        Left = 396
        Top = 3
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit1NameTR'
      end
      object Edit1CompanyTR: TEdit
        Left = 396
        Top = 43
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit1CompanyTR'
      end
      object CalendarPickerB1TR: TCalendarPicker
        Left = 3
        Top = 40
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        MinYear = 1980
        OnCloseUp = CalendarPickerB1TRCloseUp
        ParentFont = False
        TabOrder = 4
        TextHint = 'select a date'
      end
      object CalendarPickerE1TR: TCalendarPicker
        Left = 129
        Top = 40
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE1TRChange
        OnCloseUp = CalendarPickerE1TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object Memo1SkillsTR: TMemo
        Left = 533
        Top = 295
        Width = 436
        Height = 146
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo1Skills')
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object RichEdit1RespTR: TRichEdit
        Left = 82
        Top = 78
        Width = 887
        Height = 184
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
      object RichEdit1OtherTR: TRichEdit
        Left = 3
        Top = 368
        Width = 524
        Height = 73
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1Other')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit1BenefitsTR: TRichEdit
        Left = 3
        Top = 268
        Width = 522
        Height = 72
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1BenefitsTR')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 8
      end
      object BitBtnClear1: TBitBtn
        Left = 944
        Top = 3
        Width = 25
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear1Click
      end
      object BitBtn1: TBitBtn
        Left = 259
        Top = 5
        Width = 25
        Height = 25
        Caption = '...'
        TabOrder = 10
        OnClick = BitBtn1Click
      end
    end
    object TabSheetJob2TR: TTabSheet
      Caption = 'Job 2'
      ImageIndex = 4
      DesignSize = (
        972
        444)
      object Label44: TLabel
        Left = 308
        Top = 6
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label53: TLabel
        Left = 282
        Top = 41
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label74: TLabel
        Left = 27
        Top = 274
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label75: TLabel
        Left = 43
        Top = 309
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label82: TLabel
        Left = 3
        Top = 76
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label109: TLabel
        Left = 489
        Top = 276
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit2DatesTR: TEdit
        Left = 2
        Top = 3
        Width = 250
        Height = 29
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
        Text = 'Edit2DatesTR'
      end
      object Edit2NameTR: TEdit
        Left = 356
        Top = 3
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit2NameTR'
      end
      object Edit2CompanyTR: TEdit
        Left = 356
        Top = 38
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit2CompanyTR'
      end
      object CalendarPickerB2TR: TCalendarPicker
        Left = 2
        Top = 38
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB2TRChange
        OnCloseUp = CalendarPickerB2TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE2TR: TCalendarPicker
        Left = 130
        Top = 38
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE2TRChange
        OnCloseUp = CalendarPickerE2TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Edit2BenefitsTR: TEdit
        Left = 83
        Top = 270
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit2BenefitsTR'
      end
      object Memo2SkillsTR: TMemo
        Left = 532
        Top = 270
        Width = 438
        Height = 163
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo2SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit2RespTR: TRichEdit
        Left = 81
        Top = 76
        Width = 888
        Height = 188
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit2RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit2OtherTR: TRichEdit
        Left = 83
        Top = 305
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit2OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear2: TBitBtn
        Left = 944
        Top = 3
        Width = 25
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear2Click
      end
    end
    object TabSheetJob3TR: TTabSheet
      Caption = 'Job 3'
      ImageIndex = 5
      DesignSize = (
        972
        444)
      object Label43: TLabel
        Left = 284
        Top = 5
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label52: TLabel
        Left = 260
        Top = 37
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label76: TLabel
        Left = 27
        Top = 274
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label77: TLabel
        Left = 41
        Top = 333
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label83: TLabel
        Left = 3
        Top = 75
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label108: TLabel
        Left = 489
        Top = 273
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit3DatesTR: TEdit
        Left = 2
        Top = 2
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit3DatesTR'
      end
      object Edit3NameTR: TEdit
        Left = 332
        Top = 2
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit3NameTR'
      end
      object Edit3CompanyTR: TEdit
        Left = 332
        Top = 37
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit3CompanyTR'
      end
      object CalendarPickerB3TR: TCalendarPicker
        Left = 0
        Top = 37
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB3TRChange
        OnCloseUp = CalendarPickerB3TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE3TR: TCalendarPicker
        Left = 130
        Top = 37
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE3TRChange
        OnCloseUp = CalendarPickerE3TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Edit3BenefitsTR: TEdit
        Left = 83
        Top = 273
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit3BenefitsTR'
      end
      object Memo3SkillsTR: TMemo
        Left = 533
        Top = 273
        Width = 438
        Height = 160
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo3SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit3RespTR: TRichEdit
        Left = 81
        Top = 75
        Width = 888
        Height = 192
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit3RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit3OtherTR: TRichEdit
        Left = 83
        Top = 303
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit3OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear3: TBitBtn
        Left = 944
        Top = 4
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear3Click
      end
    end
    object TabSheetJob4TR: TTabSheet
      Caption = 'Job 4'
      ImageIndex = 6
      DesignSize = (
        972
        444)
      object Label42: TLabel
        Left = 316
        Top = 0
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label51: TLabel
        Left = 291
        Top = 35
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label78: TLabel
        Left = 27
        Top = 275
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label79: TLabel
        Left = 43
        Top = 302
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label84: TLabel
        Left = 3
        Top = 81
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label107: TLabel
        Left = 488
        Top = 275
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit4DatesTR: TEdit
        Left = 2
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit4DatesTR'
      end
      object Edit4NameTR: TEdit
        Left = 364
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit4NameTR'
      end
      object Edit4CompanyTR: TEdit
        Left = 364
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit4CompanyTR'
      end
      object CalendarPickerB4TR: TCalendarPicker
        Left = 3
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB4TRChange
        OnCloseUp = CalendarPickerB4TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE4TR: TCalendarPicker
        Left = 130
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE4TRChange
        OnCloseUp = CalendarPickerE4TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Edit4BenefitsTR: TEdit
        Left = 82
        Top = 271
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit4BenefitsTR'
      end
      object Memo4SkillsTR: TMemo
        Left = 533
        Top = 275
        Width = 438
        Height = 158
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo4SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit4RespTR: TRichEdit
        Left = 81
        Top = 73
        Width = 888
        Height = 192
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit4RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit4OtherTR: TRichEdit
        Left = 83
        Top = 302
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit4OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear4: TBitBtn
        Left = 944
        Top = -1
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear4Click
      end
    end
    object TabSheetJob5TR: TTabSheet
      Caption = 'Job 5'
      ImageIndex = 7
      DesignSize = (
        972
        444)
      object Label41: TLabel
        Left = 308
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label50: TLabel
        Left = 281
        Top = 38
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label80: TLabel
        Left = 27
        Top = 267
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label81: TLabel
        Left = 41
        Top = 314
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label85: TLabel
        Left = 3
        Top = 70
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label106: TLabel
        Left = 489
        Top = 267
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit5DatesTR: TEdit
        Left = 2
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit5DatesTR'
      end
      object Edit5NameTR: TEdit
        Left = 356
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit5NameTR'
      end
      object Edit5CompanyTR: TEdit
        Left = 356
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit5CompanyTR'
      end
      object CalendarPickerB5TR: TCalendarPicker
        Left = 2
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB5TRChange
        OnCloseUp = CalendarPickerB5TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE5TR: TCalendarPicker
        Left = 130
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE5TRChange
        OnCloseUp = CalendarPickerE5TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Edit5BenefitsTR: TEdit
        Left = 83
        Top = 267
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit5BenefitsTR'
      end
      object Memo5SkillsTR: TMemo
        Left = 529
        Top = 267
        Width = 438
        Height = 166
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo5SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit5RespTR: TRichEdit
        Left = 83
        Top = 73
        Width = 888
        Height = 188
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit5RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit5OtherTR: TRichEdit
        Left = 81
        Top = 302
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit5OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear5: TBitBtn
        Left = 944
        Top = 3
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear5Click
      end
    end
    object TabSheetJob6TR: TTabSheet
      Caption = 'Job 6'
      ImageIndex = 8
      DesignSize = (
        972
        444)
      object Label40: TLabel
        Left = 308
        Top = 3
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label49: TLabel
        Left = 281
        Top = 38
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label86: TLabel
        Left = 3
        Top = 75
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label91: TLabel
        Left = 25
        Top = 272
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label92: TLabel
        Left = 41
        Top = 335
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label105: TLabel
        Left = 489
        Top = 275
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit6BenefitsTR: TEdit
        Left = 81
        Top = 267
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit6BenefitsTR'
      end
      object Edit6DatesTR: TEdit
        Left = 2
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit6DatesTR'
      end
      object Edit6NameTR: TEdit
        Left = 356
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit6NameTR'
      end
      object Edit6CompanyTR: TEdit
        Left = 356
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit6CompanyTR'
      end
      object CalendarPickerB6TR: TCalendarPicker
        Left = 2
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnCloseUp = CalendarPickerB6TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE6TR: TCalendarPicker
        Left = 130
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnCloseUp = CalendarPickerE6TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Memo6SkillsTR: TMemo
        Left = 533
        Top = 272
        Width = 438
        Height = 161
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo6SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit6RespTR: TRichEdit
        Left = 81
        Top = 70
        Width = 888
        Height = 196
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit6RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit6OtherTR: TRichEdit
        Left = 83
        Top = 302
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit6OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear6: TBitBtn
        Left = 947
        Top = 2
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear6Click
      end
    end
    object TabSheetJob7TR: TTabSheet
      Caption = 'Job 7'
      ImageIndex = 9
      DesignSize = (
        972
        444)
      object Label39: TLabel
        Left = 311
        Top = 0
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label48: TLabel
        Left = 289
        Top = 40
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label87: TLabel
        Left = -1
        Top = 81
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label93: TLabel
        Left = 24
        Top = 274
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label94: TLabel
        Left = 39
        Top = 335
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label104: TLabel
        Left = 486
        Top = 276
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit7BenefitsTR: TEdit
        Left = 80
        Top = 268
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit7BenefitsTR'
      end
      object CalendarPickerB7TR: TCalendarPicker
        Left = 2
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB7TRChange
        OnCloseUp = CalendarPickerB7TRCloseUp
        ParentFont = False
        TabOrder = 4
        TextHint = 'select a date'
      end
      object CalendarPickerE7TR: TCalendarPicker
        Left = 128
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnCloseUp = CalendarPickerE7TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object Edit7DatesTR: TEdit
        Left = 2
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 6
        Text = 'Edit7DatesTR'
      end
      object Edit7NameTR: TEdit
        Left = 359
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit7NameTR'
      end
      object Edit7CompanyTR: TEdit
        Left = 362
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit7CompanyTR'
      end
      object Memo7SkillsTR: TMemo
        Left = 531
        Top = 272
        Width = 438
        Height = 161
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo7SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit7RespTR: TRichEdit
        Left = 79
        Top = 69
        Width = 888
        Height = 197
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit7RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit7OtherTR: TRichEdit
        Left = 79
        Top = 303
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit7OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear7: TBitBtn
        Left = 942
        Top = -1
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear7Click
      end
    end
    object TabSheetJob8TR: TTabSheet
      Caption = 'Job 8'
      ImageIndex = 10
      DesignSize = (
        972
        444)
      object Label38: TLabel
        Left = 308
        Top = 0
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label47: TLabel
        Left = 283
        Top = 35
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label88: TLabel
        Left = 5
        Top = 75
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label95: TLabel
        Left = 27
        Top = 273
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label96: TLabel
        Left = 41
        Top = 335
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label103: TLabel
        Left = 489
        Top = 272
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit8BenefitsTR: TEdit
        Left = 83
        Top = 272
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit8BenefitsTR'
      end
      object CalendarPickerB8TR: TCalendarPicker
        Left = 0
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB8TRChange
        OnCloseUp = CalendarPickerB8TRCloseUp
        ParentFont = False
        TabOrder = 4
        TextHint = 'select a date'
      end
      object CalendarPickerE8TR: TCalendarPicker
        Left = 130
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE8TRChange
        OnCloseUp = CalendarPickerE8TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object Edit8DatesTR: TEdit
        Left = 2
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 6
        Text = 'Edit8DatesTR'
      end
      object Edit8NameTR: TEdit
        Left = 356
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit8NameTR'
      end
      object Edit8CompanyTR: TEdit
        Left = 356
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit8CompanyTR'
      end
      object Memo8SkillsTR: TMemo
        Left = 533
        Top = 272
        Width = 438
        Height = 161
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo8SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit8RespTR: TRichEdit
        Left = 81
        Top = 73
        Width = 888
        Height = 193
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit8RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit8OtherTR: TRichEdit
        Left = 83
        Top = 303
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit8OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear8: TBitBtn
        Left = 947
        Top = -1
        Width = 25
        Height = 25
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear8Click
      end
    end
    object TabSheetJob9TR: TTabSheet
      Caption = 'Job 9'
      ImageIndex = 11
      DesignSize = (
        972
        444)
      object Label37: TLabel
        Left = 308
        Top = 0
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label46: TLabel
        Left = 282
        Top = 35
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label89: TLabel
        Left = 2
        Top = 83
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label97: TLabel
        Left = 26
        Top = 268
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label98: TLabel
        Left = 42
        Top = 335
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label102: TLabel
        Left = 488
        Top = 272
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit9BenefitsTR: TEdit
        Left = 82
        Top = 268
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit9BenefitsTR'
      end
      object Edit9DatesTR: TEdit
        Left = 3
        Top = 0
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 4
        Text = 'Edit9DatesTR'
      end
      object CalendarPickerB9TR: TCalendarPicker
        Left = 4
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB9TRChange
        OnCloseUp = CalendarPickerB9TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object CalendarPickerE9TR: TCalendarPicker
        Left = 130
        Top = 35
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE9TRChange
        OnCloseUp = CalendarPickerE9TRCloseUp
        ParentFont = False
        TabOrder = 6
        TextHint = 'select a date'
      end
      object Edit9NameTR: TEdit
        Left = 356
        Top = 0
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit9NameTR'
      end
      object Edit9CompanyTR: TEdit
        Left = 356
        Top = 35
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit9CompanyTR'
      end
      object Memo9SkillsTR: TMemo
        Left = 533
        Top = 272
        Width = 438
        Height = 161
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo9SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit9RespTR: TRichEdit
        Left = 81
        Top = 73
        Width = 888
        Height = 193
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit9RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit9OtherTR: TRichEdit
        Left = 83
        Top = 305
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit9OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear9: TBitBtn
        Left = 944
        Top = -1
        Width = 25
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear9Click
      end
    end
    object TabSheetJob10TR: TTabSheet
      Caption = 'Job 10'
      ImageIndex = 12
      DesignSize = (
        972
        444)
      object Label36: TLabel
        Left = 308
        Top = 2
        Width = 42
        Height = 21
        Caption = #1053#1072#1079#1074#1072
      end
      object Label45: TLabel
        Left = 281
        Top = 40
        Width = 67
        Height = 21
        Caption = #1050#1086#1084#1087#1072#1085#1110#1103
      end
      object Label90: TLabel
        Left = 3
        Top = 74
        Width = 74
        Height = 21
        Caption = #1054#1073#1086#1074#39#1103#1079#1082#1080
      end
      object Label99: TLabel
        Left = 25
        Top = 270
        Width = 50
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1042#1080#1075#1086#1076#1072
      end
      object Label100: TLabel
        Left = 41
        Top = 340
        Width = 34
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1030#1085#1096#1077
      end
      object Label101: TLabel
        Left = 487
        Top = 270
        Width = 39
        Height = 21
        Anchors = [akLeft, akBottom]
        Caption = #1057#1082#1110#1083#1080
      end
      object Edit10BenefitsTR: TEdit
        Left = 81
        Top = 270
        Width = 400
        Height = 29
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        Text = 'Edit10BenefitsTR'
      end
      object CalendarPickerB10TR: TCalendarPicker
        Left = 4
        Top = 37
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerB10TRChange
        OnCloseUp = CalendarPickerB10TRCloseUp
        ParentFont = False
        TabOrder = 4
        TextHint = 'select a date'
      end
      object CalendarPickerE10TR: TCalendarPicker
        Left = 130
        Top = 37
        Width = 120
        Height = 32
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarPickerE10TRChange
        OnCloseUp = CalendarPickerE10TRCloseUp
        ParentFont = False
        TabOrder = 5
        TextHint = 'select a date'
      end
      object Edit10DatesTR: TEdit
        Left = 2
        Top = 2
        Width = 250
        Height = 29
        ReadOnly = True
        TabOrder = 6
        Text = 'Edit10DatesTR'
      end
      object Edit10NameTR: TEdit
        Left = 356
        Top = 2
        Width = 400
        Height = 29
        TabOrder = 0
        Text = 'Edit10NameTR'
      end
      object Edit10CompanyTR: TEdit
        Left = 356
        Top = 37
        Width = 400
        Height = 29
        TabOrder = 1
        Text = 'Edit10CompanyTR'
      end
      object Memo10SkillsTR: TMemo
        Left = 531
        Top = 272
        Width = 438
        Height = 161
        Anchors = [akLeft, akBottom]
        Lines.Strings = (
          'Memo10SkillsTR')
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object RichEdit10RespTR: TRichEdit
        Left = 81
        Top = 79
        Width = 888
        Height = 185
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit10RespTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object RichEdit10OtherTR: TRichEdit
        Left = 81
        Top = 305
        Width = 444
        Height = 130
        Anchors = [akLeft, akBottom]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          'RichEdit10OtherTR')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 8
      end
      object BitBtnClear10: TBitBtn
        Left = 944
        Top = 1
        Width = 25
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'X'
        TabOrder = 9
        OnClick = BitBtnClear10Click
      end
    end
  end
  object UniGetResume: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE templates '
      
        'set name = :p_name, job_opportunity = :p_job_opportunity, job_pl' +
        'ace = :p_job_place, '
      
        'phone_numbers_text = :p_phone_numbers_text, resume_introduction ' +
        '= :p_resume_introduction'
      'WHERE id = :p_id')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT   '
      '  id ,'
      '  name ,'
      '  lang ,'
      '  region_id ,'
      '  job_opportunity ,'
      '  job_place ,'
      '  phone_numbers_text ,'
      '  cv_docx_url ,'
      '  cv_pdf_url ,'
      '  resume_introduction,'
      '  cv_introduction,'
      '  cl_text, '
      '  archived ,'
      '  created,'
      '  updated '
      'from resumes WHERE id = :p_id')
    Left = 440
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = 0
      end>
    object UniGetResumeid: TIntegerField
      FieldName = 'id'
    end
    object UniGetResumename: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object UniGetResumelang: TWideStringField
      FieldName = 'lang'
      Size = 3
    end
    object UniGetResumeregion_id: TWideStringField
      FieldName = 'region_id'
      Size = 2
    end
    object UniGetResumejob_opportunity: TWideStringField
      FieldName = 'job_opportunity'
      Required = True
      Size = 255
    end
    object UniGetResumejob_place: TWideStringField
      FieldName = 'job_place'
      Size = 255
    end
    object UniGetResumephone_numbers_text: TWideStringField
      FieldName = 'phone_numbers_text'
      Size = 255
    end
    object UniGetResumecv_docx_url: TWideStringField
      FieldName = 'cv_docx_url'
      Size = 255
    end
    object UniGetResumecv_pdf_url: TWideStringField
      FieldName = 'cv_pdf_url'
      Size = 255
    end
    object UniGetResumeresume_introduction: TWideMemoField
      FieldName = 'resume_introduction'
      BlobType = ftWideMemo
    end
    object UniGetResumecv_introduction: TWideMemoField
      FieldName = 'cv_introduction'
      BlobType = ftWideMemo
    end
    object UniGetResumecl_text: TWideMemoField
      FieldName = 'cl_text'
      BlobType = ftWideMemo
    end
    object UniGetResumearchived: TBooleanField
      FieldName = 'archived'
    end
    object UniGetResumecreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetResumeupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniGetFooters: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE templates '
      
        'set name = :p_name, job_opportunity = :p_job_opportunity, job_pl' +
        'ace = :p_job_place, '
      
        'phone_numbers_text = :p_phone_numbers_text, resume_introduction ' +
        '= :p_resume_introduction'
      'WHERE id = :p_id')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT '
      '  id, '
      '  resume_id, '
      '  footer_header, '
      '  footer_text, '
      '  footer_order,'
      '  cv_include_footer,'
      '  created,'
      '  updated '
      'FROM resume_footers '
      '  WHERE  resume_id = :p_resume_id'
      '  ORDER BY footer_order')
    Left = 576
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = 0
      end>
    object UniGetFootersid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object UniGetFootersresume_id: TIntegerField
      FieldName = 'resume_id'
      Required = True
    end
    object UniGetFootersfooter_header: TWideStringField
      FieldName = 'footer_header'
      Size = 255
    end
    object UniGetFootersfooter_text: TWideMemoField
      FieldName = 'footer_text'
      BlobType = ftWideMemo
    end
    object UniGetFootersfooter_order: TIntegerField
      FieldName = 'footer_order'
    end
    object UniGetFooterscv_include_footer: TBooleanField
      FieldName = 'cv_include_footer'
      Required = True
    end
    object UniGetFooterscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetFootersupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniGetTemplate: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE templates '
      
        'set name = :p_name, job_opportunity = :p_job_opportunity, job_pl' +
        'ace = :p_job_place, '
      
        'phone_numbers_text = :p_phone_numbers_text, resume_introduction ' +
        '= :p_resume_introduction'
      'WHERE id = :p_id')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT '
      'id, name, job_opportunity, job_place, phone_numbers_text, '
      'template_introduction, archived, created, updated'
      'from templates '
      'WHERE id = :p_id')
    Left = 496
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetTemplateid: TIntegerField
      FieldName = 'id'
    end
    object UniGetTemplatename: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object UniGetTemplatejob_opportunity: TWideStringField
      FieldName = 'job_opportunity'
      Size = 255
    end
    object UniGetTemplatejob_place: TWideStringField
      FieldName = 'job_place'
      Size = 255
    end
    object UniGetTemplatephone_numbers_text: TWideStringField
      FieldName = 'phone_numbers_text'
      Size = 255
    end
    object UniGetTemplatetemplate_introduction: TWideMemoField
      FieldName = 'template_introduction'
      BlobType = ftWideMemo
    end
    object UniGetTemplatearchived: TBooleanField
      FieldName = 'archived'
    end
    object UniGetTemplatecreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetTemplateupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniGetSkills: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select id, experience_id, ifnull(skill,'#39#39') skill, '
      
        '(select ifnull(min(category),'#39#39') from skills_categories where id' +
        ' = category_id) category,'
      'category_id, '
      'sl.created, sl.updated'
      'from skills s, skill_show_lists sl'
      'where sl.skill_id = s.id'
      'and sl.experience_id = :p_experience_id')
    UniDirectional = True
    Left = 784
    Top = 253
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_experience_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetSkillsid: TIntegerField
      FieldName = 'id'
    end
    object UniGetSkillsexperience_id: TIntegerField
      FieldName = 'experience_id'
      ReadOnly = True
      Required = True
    end
    object UniGetSkillsskill: TWideStringField
      FieldName = 'skill'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object UniGetSkillscategory: TWideStringField
      FieldName = 'category'
      ReadOnly = True
      Size = 255
    end
    object UniGetSkillscategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object UniGetSkillscreated: TDateTimeField
      FieldName = 'created'
      ReadOnly = True
    end
    object UniGetSkillsupdated: TDateTimeField
      FieldName = 'updated'
      ReadOnly = True
    end
  end
  object UniGetJobs: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select id experience_id, '
      'ifnull(job_position,'#39#39') job_position, '
      'job_order,'
      'start_date, '
      'end_date, '
      'ifnull(employer,'#39#39') employer, '
      'responsibilities, '
      'ifnull(benefits,'#39#39') benefits,'
      'other, '
      'created, '
      'updated'
      'from experiences e'
      'where e.resume_id = :p_resume_id'
      'order by start_date desc')
    UniDirectional = True
    Left = 672
    Top = 253
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetJobsexperience_id: TIntegerField
      FieldName = 'experience_id'
    end
    object UniGetJobsjob_position: TWideStringField
      FieldName = 'job_position'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object UniGetJobsjob_order: TIntegerField
      FieldName = 'job_order'
    end
    object UniGetJobsstart_date: TDateField
      FieldName = 'start_date'
      Required = True
    end
    object UniGetJobsend_date: TDateField
      FieldName = 'end_date'
    end
    object UniGetJobsemployer: TWideStringField
      FieldName = 'employer'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object UniGetJobsresponsibilities: TWideMemoField
      FieldName = 'responsibilities'
      BlobType = ftWideMemo
    end
    object UniGetJobsbenefits: TWideMemoField
      FieldName = 'benefits'
      ReadOnly = True
      Required = True
      BlobType = ftWideMemo
    end
    object UniGetJobsother: TWideMemoField
      FieldName = 'other'
      BlobType = ftWideMemo
    end
    object UniGetJobscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetJobsupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniSPInsertResume: TUniStoredProc
    StoredProcName = 'insert_resume'
    SQL.Strings = (
      
        'CALL insert_resume(:p_name, :p_lang, :p_region_id, :p_job_opport' +
        'unity, :p_job_place, :p_phone_numbers_text, :p_resume_introducti' +
        'on, :p_cl_text, :p_footer_1_header, :p_footer_1_text, :p_footer_' +
        '2_header, :p_footer_2_text, :p_footer_3_header, :p_footer_3_text' +
        ', :p_footer_4_header, :p_footer_4_text, :p_archived, :p_cv_intro' +
        'duction, :p_cv_include_footer1, :p_cv_include_footer2, :p_cv_inc' +
        'lude_footer3, :p_cv_include_footer4, @p_resume_id); SELECT CAST(' +
        '@p_resume_id AS SIGNED) AS '#39'@p_resume_id'#39)
    Connection = FormMain.UniConnection
    Left = 222
    Top = 492
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_name'
        ParamType = ptInput
        Size = 50
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_lang'
        ParamType = ptInput
        Size = 3
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_region_id'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_job_opportunity'
        ParamType = ptInput
        Size = 255
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'p_job_place'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_phone_numbers_text'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_resume_introduction'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideMemo
        Name = 'p_cl_text'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'p_footer_1_header'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_footer_1_text'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'p_footer_2_header'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_footer_2_text'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'p_footer_3_header'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_footer_3_text'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'p_footer_4_header'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_footer_4_text'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftShortint
        Name = 'p_archived'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_cv_introduction'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftShortint
        Name = 'p_cv_include_footer1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftShortint
        Name = 'p_cv_include_footer2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftShortint
        Name = 'p_cv_include_footer3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftShortint
        Name = 'p_cv_include_footer4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptOutput
        Value = 94
      end>
    CommandStoredProcName = 'insert_resume'
  end
  object UniGetCopyResumeID: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT max(ID) as ID from resumes '
      'WHERE name = :p_name and lang = :p_lang')
    Left = 246
    Top = 125
    ParamData = <
      item
        DataType = ftString
        Name = 'p_name'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_lang'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetCopyResumeIDID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object UniSPInsertExperiences: TUniStoredProc
    StoredProcName = 'insert_experience'
    SQL.Strings = (
      
        'CALL insert_experience(:p_flag, :p_resume_id, :p_template_id, :p' +
        '_job_order, :p_job_position, :p_start_date, :p_end_date, :p_empl' +
        'oyer, :p_resp, :p_benefits, :p_other, @p_experience_id); SELECT ' +
        'CAST(@p_experience_id AS SIGNED) AS '#39'@p_experience_id'#39)
    Connection = FormMain.UniConnection
    Left = 400
    Top = 488
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_flag'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_template_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_job_order'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_job_position'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_start_date'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'p_end_date'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_employer'
        ParamType = ptInput
        Size = 255
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_resp'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftWideString
        Name = 'p_benefits'
        ParamType = ptInput
        Size = 1000
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_other'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'p_experience_id'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'insert_experience'
  end
  object UniSPInsertSkillShow: TUniStoredProc
    StoredProcName = 'insert_skill_show'
    SQL.Strings = (
      'CALL insert_skill_show(:p_experience_id, :p_skill)')
    Connection = FormMain.UniConnection
    Left = 560
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_experience_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'p_skill'
        ParamType = ptInput
        Size = 255
        Value = nil
      end>
    CommandStoredProcName = 'insert_skill_show'
  end
  object UniGetTemplateFooters: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE templates '
      
        'set name = :p_name, job_opportunity = :p_job_opportunity, job_pl' +
        'ace = :p_job_place, '
      
        'phone_numbers_text = :p_phone_numbers_text, resume_introduction ' +
        '= :p_resume_introduction'
      'WHERE id = :p_id')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT f.id, f.template_id, f.footer_header, '
      'f.footer_text, f.footer_order, f.created, f.updated '
      'from template_footers f, templates r'
      'WHERE  r.id = f.template_id'
      'and f.template_id = :p_template_id'
      'ORDER BY f.footer_order')
    Left = 784
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_template_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetTemplateFootersid: TIntegerField
      FieldName = 'id'
    end
    object UniGetTemplateFooterstemplate_id: TIntegerField
      FieldName = 'template_id'
    end
    object UniGetTemplateFootersfooter_header: TWideStringField
      FieldName = 'footer_header'
      Size = 255
    end
    object UniGetTemplateFootersfooter_text: TWideMemoField
      FieldName = 'footer_text'
      BlobType = ftWideMemo
    end
    object UniGetTemplateFootersfooter_order: TIntegerField
      FieldName = 'footer_order'
    end
    object UniGetTemplateFooterscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetTemplateFootersupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniGetTemplateJobs: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select id, '
      'job_position, start_date, end_date, '
      'employer, '
      'responsibilities, '
      'benefits, '
      'other, '
      'created, updated, '
      'ROW_NUMBER() OVER () AS order_position'
      'from experiences e'
      'where e.template_id = :p_template_id'
      'order by start_date desc')
    UniDirectional = True
    Left = 912
    Top = 109
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_template_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniGetTemplateJobsid: TIntegerField
      FieldName = 'id'
    end
    object UniGetTemplateJobsjob_position: TWideStringField
      FieldName = 'job_position'
      Size = 255
    end
    object UniGetTemplateJobsstart_date: TDateField
      FieldName = 'start_date'
      Required = True
    end
    object UniGetTemplateJobsend_date: TDateField
      FieldName = 'end_date'
    end
    object UniGetTemplateJobsemployer: TWideStringField
      FieldName = 'employer'
      Size = 255
    end
    object UniGetTemplateJobsresponsibilities: TWideMemoField
      FieldName = 'responsibilities'
      BlobType = ftWideMemo
    end
    object UniGetTemplateJobsbenefits: TWideStringField
      FieldName = 'benefits'
      Size = 1000
    end
    object UniGetTemplateJobsother: TWideMemoField
      FieldName = 'other'
      BlobType = ftWideMemo
    end
    object UniGetTemplateJobscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniGetTemplateJobsupdated: TDateTimeField
      FieldName = 'updated'
    end
    object UniGetTemplateJobsorder_position: TLargeintField
      FieldName = 'order_position'
      ReadOnly = True
      Required = True
    end
  end
end
