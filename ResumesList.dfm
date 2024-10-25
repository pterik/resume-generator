object FormListResumes: TFormListResumes
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight]
  Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1110#1093' '#1088#1077#1079#1102#1084#1077
  ClientHeight = 659
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  DesignSize = (
    988
    659)
  TextHeight = 15
  object Label4: TLabel
    Left = 180
    Top = 522
    Width = 352
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = #1042#1082#1072#1078#1110#1090#1100' '#1085#1086#1084#1077#1088' '#1082#1086#1087#1110#1111' '#1079' '#1096#1072#1073#1083#1086#1085#1091' (t) '#1072#1073#1086' '#1088#1077#1079#1102#1084#1077' (r)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 8
    Width = 985
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = UniDSResumes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = '#'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'job_opportunity'
        Title.Caption = #1056#1086#1073#1086#1090#1072
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lang'
        Title.Caption = #1052#1086#1074#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'region_id'
        Title.Caption = #1056#1077#1075#1080#1086#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cntr_exp'
        Title.Caption = '# jobs'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cntr_skills'
        Title.Caption = '# skills'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'job_place'
        Title.Caption = #1052#1110#1089#1094#1077' '#1088#1086#1073#1086#1090#1080
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_numbers_text'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085#1080
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'archive'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created'
        Title.Caption = #1057#1086#1079#1076#1072#1085
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'updated'
        Title.Caption = #1054#1085#1086#1074#1083#1077#1085#1086
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cv_docx_url'
        Title.Caption = 'URL DOCX'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cv_pdf_url'
        Title.Caption = 'URL PDF'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object BitBtnEditResume: TBitBtn
    Left = 444
    Top = 559
    Width = 134
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080' (F4)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000000900000012000000180000001A0000001A00000018000000100000
      0005000000010000000000000000000000000000000000000000000000020000
      000D3524146A936338E5A56B3AFFA36938FFA16736FF9D6233FB633E20B70805
      022800000006000000010000000000000000000000000000000000000008442F
      1D78C18B59FEE1AC76FFE4C296FFB5793BFFB5793CFFB5793CFFAD7239FF7E50
      2AD80302042A00000006000000010000000000000000000000000000000DB07D
      4EF3E6B17AFFE9B47DFFE9B47DFFE7C79DFFB67A3DFFB57A3DFFB57A3DFF6953
      7BFF090E5ED50001052800000006000000010000000000000000000000086A4E
      329DEFD7B3FFE9B47DFFE9B47DFFE9B47DFFEACDA4FFB57B3EFF735C86FF313F
      CCFF2935B8FF0B1161D501010627000000050000000100000000000000010000
      000C745538A5F2DDBBFFE9B47DFFE9B47DFFE9B47DFFD1CEE1FF3443CEFF3443
      CDFF3443CEFF2C39BAFF0D1463D4010106260000000500000001000000000000
      00020000000B76583BA4F5E2C1FFE9B47DFFB5A9B8FF829FF1FFB1C9F5FF3949
      D1FF3A4AD1FF3A49D1FF303FBDFF111767D30101062500000005000000000000
      0000000000010000000B785B3DA3E9E1D2FF87A3F2FF87A4F1FF87A3F2FFB9D0
      F7FF3E50D5FF3E50D5FF3F50D5FF3545C2FF141B6AD201010622000000000000
      000000000000000000010000000A2C386FA2C9E2F9FF8CA8F3FF8DA8F3FF8CA8
      F3FFC0D8F9FF4457D9FF4356D9FF4456D9FF3949C2FF141A61C2000000000000
      000000000000000000000000000100000009303D74A1CFE7FBFF92ADF3FF91AD
      F4FF92ADF4FFC6DEFAFF495EDBFF495DDCFF475AD7FF232F8BF0000000000000
      00000000000000000000000000000000000100000008334177A0D4ECFCFF97B2
      F5FF97B2F4FF97B3F5FFCCE4FBFF4A5FDAFF3141A4F6090C214A000000000000
      000000000000000000000000000000000000000000010000000736457A9FD8F0
      FDFF9DB7F5FF9CB7F5FFD9F1FEFF6B81CAF50B0E234700000006000000000000
      0000000000000000000000000000000000000000000000000001000000063947
      7D9EDBF3FEFFDBF3FFFF677FCFF513192C440000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00053543728E4F63AACD151A2D40000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000030000000400000002000000000000000000000000}
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnEditResumeClick
  end
  object BitBtnDeleteResume: TBitBtn
    Left = 584
    Top = 559
    Width = 120
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1042#1080#1076#1072#1083#1080#1090#1080' (F8)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      0007000000060000000300000006000000080000000400000001000000000000
      00000000000000000000000000000000000000000000000000030B082C4D2619
      99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
      0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
      EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
      000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
      DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
      0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
      BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
      0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
      E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
      0008B8826FFFFCF9F6FFCDA493FFCCA393FFCCA393FFEEE3DFFF615ED6FFB1C3
      F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
      0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
      DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
      0007BB8776FFFDFBF9FFCEA898FFCEA796FFCEA695FFCDA695FFE1CAC0FFEFE5
      E1FFE7D6D0FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
      0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
      EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
      0006BF8D7BFFFEFCFBFFD1AE9DFFD0AC9CFFD0AB9BFFCFAA99FFCEA999FFCEA8
      97FFC69C8AFFFDFBF9FFBD8978FF000000080000000000000000000000000000
      0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
      F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
      0004C69887FFFFFEFEFFD5B2A3FFD4B2A2FFD4B1A0FFD3AF9FFFD2AD9DFFD1AD
      9CFFC9A090FFFEFDFDFFC59684FF000000060000000000000000000000000000
      0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
      F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
      0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
      00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
      99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtnDeleteResumeClick
  end
  object BitBtnNewResume: TBitBtn
    Left = 144
    Top = 559
    Width = 161
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1053#1086#1074#1077'  '#1088#1077#1079#1102#1084#1077' (F3)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
      25D0522C17931209053000000009000000010000000000000000000000000000
      00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
      6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
      0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
      82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
      2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
      59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
      47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
      45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
      6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
      44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
      83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
      47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
      8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
      F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
      A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
      D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
      ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
      3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
      9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
      3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
      6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
      3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
      3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
      5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
      0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
      CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
      00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
      B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
      000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
      60CD6C543F8B16110D2200000003000000010000000000000000}
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnNewResumeClick
    OnKeyUp = BitBtnNewResumeKeyUp
  end
  object BitBtnClose: TBitBtn
    Left = 856
    Top = 613
    Width = 120
    Height = 38
    Anchors = [akRight, akBottom]
    Caption = #1042#1110#1076#1084#1110#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnCloseClick
  end
  object EditCopyNumber: TEdit
    Left = 536
    Top = 519
    Width = 121
    Height = 29
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtnCheck: TBitBtn
    Left = 722
    Top = 613
    Width = 128
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = 'R DOC '#1085#1072' '#1089#1072#1081#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtnCheckClick
  end
  object BitBtnCV: TBitBtn
    Left = 444
    Top = 613
    Width = 134
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = 'CV DOC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtnCVClick
  end
  object BitBtnLetter: TBitBtn
    Left = 584
    Top = 613
    Width = 122
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = 'CL DOCX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtnLetterClick
  end
  object BitBtnPDF: TBitBtn
    Left = 856
    Top = 559
    Width = 120
    Height = 38
    Anchors = [akRight, akBottom]
    Caption = #1057#1090#1074#1086#1088#1080#1090#1080' PDF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtnPDFClick
  end
  object BitBtnOpenResume: TBitBtn
    Left = 318
    Top = 613
    Width = 120
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = 'R DOCX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000040000000A000000100000001300000015000000140000
      00110000000C0000000500000001000000000000000000000000000000000000
      00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
      30CE3A2019870704032B00000010000000040000000000000000000000030000
      0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
      B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
      2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
      A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
      80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
      51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
      ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
      8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
      72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
      A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
      9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
      87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
      3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
      56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
      00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
      D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
      0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
      62B40F1F3D750204081700000003000000000000000000000000000000000000
      0000000000000000000000000002000000030000000400000005000000050000
      0004000000020000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtnOpenResumeClick
  end
  object BitBtnSaveResume: TBitBtn
    Left = 144
    Top = 613
    Width = 161
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080' (F9)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000090000
      000E000000100000001000000010000000100000001000000011000000110000
      0011000000110000001100000011000000100000000B0000000377544AC1A474
      66FFA47465FFA47465FFA37364FFA37264FFA27263FFA27263FFA27162FFA271
      62FFA17062FFA17061FFA17061FFA17061FF735046C30000000AAC7E71FFF8F1
      EEFFF8F0EDFFF8F1ECFFF8F0ECFFF8F0ECFFF5EDE9FFF2EAE6FFF5EDE9FFF8EF
      EBFFF7EFEBFFF7EFEBFFF7EFEBFFF7F0EBFFA8796AFF0000000FAD8172FFF8F2
      EFFFF6EDE8FFF7EDE8FFF6ECE8FFF4EBE6FFE6DBD6FFA87A62FFE7DCD8FFF5EB
      E6FFF6EDE7FFF6ECE8FFF6ECE8FFF8F0ECFFA97B6BFF00000010AF8375FFF9F2
      EFFFF6ECE8FFF6EDE9FFF6ECE7FFEDE5E0FFAD836EFFC58A51FFB08975FFEDE4
      E0FFF6ECE7FFF6ECE8FFF6ECE8FFF8F1EDFFAA7C6DFF0000000FB18577FFF9F3
      F0FFF7EDE9FFF7EDE8FFF3EAE5FFCDB3A8FFAC6E41FFF7C67AFFA96B40FFCDB6
      ABFFF1E8E4FFF7EDE8FFF6EDE9FFF9F1EDFFAB7E6FFF0000000EB2887AFFF9F4
      F0FFF7EEE9FFF5EBE7FFE4D8D1FFA06544FFEFBE79FFF9CA82FFEDBB78FF9F63
      42FFE3D7D2FFF4EBE7FFF7EEE9FFF8F1EEFFAD8072FF0000000EB48A7CFFF9F4
      F1FFF7EEEAFFF4EBE7FFC69E83FFB47C54FFB47B53FFFACF88FFB37851FFB277
      4FFFC3987EFFF2E9E5FFF7EEE9FFF9F2EFFFAF8274FF0000000DB68D7FFFFAF4
      F2FFF7EEEAFFF6EDE9FFF2E9E5FFE9E1DDFFB77F57FFFDD48EFFB1744CFFE8DF
      DBFFF1E7E4FFF6EDE9FFF7EEEAFFF9F2EFFFB08476FF0000000CB88F82FFFAF5
      F2FFF7EEEAFFF7EEEBFFF7EEEAFFF0E7E5FFBA845CFFFEEAC1FFB2774FFFEFE7
      E3FFF7EEEAFFF7EFEAFFF7EEEAFFF9F3F0FFB28679FF0000000CB99184FFFAF5
      F3FFF8EFEBFFF7EFEAFFF7EFEBFFF2EAE6FFCB9E76FFCB9E76FFCB9E76FFF2E8
      E5FFF7EFEAFFF7EEEAFFF7EFEBFFFAF4F1FFB3897BFF0000000BBB9387FFFAF6
      F4FFF7EFEBFFF7EEEBFFF8EFEBFFF6EDEAFFF2EAE6FFF1E9E5FFF2EAE6FFF6ED
      EAFFF7EFEBFFF7EFEBFFF7EEEBFFFAF3F2FFB58B7DFF0000000AD4A477FFD8B1
      8BFFD2A373FFD1A372FFD1A272FFD1A170FFD0A070FFD09F6FFFCF9F6EFFCE9E
      6DFFCF9D6CFFCE9C6BFFCE9C6AFFD3A77CFFCE9764FF00000009D4A678FFEED7
      B6FFE2BB87FFE2BA86FFE2B985FFE2BA85FFE2BA85FFE1B984FFE1B984FFE1B8
      84FFE1B883FFE1B883FFE0B783FFEBD0AAFFCE9864FF00000009D4A679FFF1DC
      BCFFF0DCBCFFF0DBBCFFF0DBBCFFF0DCBBFFEFDABBFFEFDABBFFEFDABAFFEFDA
      B9FFEFD8B9FFEFD9B8FFEFD8B6FFEED5B1FFCE9865FF000000089E7B5AC0D4A6
      79FFD4A577FFD4A476FFD3A375FFD3A272FFD2A071FFD1A06FFFD09F6FFFD09D
      6DFFD09C6CFFD09B6AFFCF9B68FFCF9A67FF99714BC200000005}
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtnSaveResumeClick
  end
  object BitBtnArchive: TBitBtn
    Left = 318
    Top = 559
    Width = 120
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1042' '#1072#1088#1093#1080#1074' (F7)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
      25D0522C17931209053000000009000000010000000000000000000000000000
      00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
      6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
      0110744226B9BC7C4DFFDDAE77FFDEB076FFDEAF75FFDEAF75FFDEB074FFDDAF
      75FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
      2095BE8053FFE0B37CFFDFB076FFDEB177FFDFB279FFE0B379FFE0B27AFFE0B2
      79FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
      47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFE1B67EFFE2B67FFFE2B77FFFE2B7
      7FFFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
      6FFFE2B780FFE5BD89FFE7C291FFE8C393FFE8C494FFE8C594FFE8C495FFE8C4
      95FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
      83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFB0794AFFAB7245FFAD75
      47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
      8FFFE4BB84FFA56B3FFFF5EEE9FFFAF6F3FFFAF7F3FFFBF7F4FFFBF7F5FFFAF7
      F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
      A0FFE5BE89FFA56B3FFFE6D9D2FFE7DBD4FFE9DED7FFEAE0D9FFEAE0DAFFEBE1
      DBFFEBE0DBFFEEE5E1FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
      ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B
      3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
      9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFF1D7ABFFF1D8ADFFF1D8ADFFF1D8
      ADFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
      6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFF3DCB3FFF3DEB4FFF3DEB4FFF3DE
      B4FFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
      3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFF4E1B9FFF5E3BBFFF5E2BBFFF5E2
      BBFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
      0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
      CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
      00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
      B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
      000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
      60CD6C543F8B16110D2200000003000000010000000000000000}
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtnArchiveClick
  end
  object RadioGroup: TRadioGroup
    Left = 1
    Top = 547
    Width = 128
    Height = 105
    Anchors = [akLeft, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'Zip'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      #1041#1077#1079' '#1072#1088#1093#1080#1074#1072
      #1058#1086#1083#1100#1082#1086' '#1072#1088#1093#1080#1074
      #1042#1089#1077' '#1088#1077#1079#1102#1084#1077)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 13
    OnClick = RadioGroupClick
  end
  object DBRichEditor: TDBRichEdit
    Left = 2
    Top = 287
    Width = 983
    Height = 183
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'resume_introduction'
    DataSource = UniDSResumes
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ScrollBars = ssBoth
    TabOrder = 15
    WantTabs = True
    OnSaveClipboard = DBRichEditorSaveClipboard
  end
  object CBWordWrap: TCheckBox
    Left = 16
    Top = 524
    Width = 97
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'WordWrap'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 17
    OnClick = CBWordWrapClick
  end
  object BitBtn1: TBitBtn
    Left = 722
    Top = 559
    Width = 128
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = #1058#1077#1089#1090#1091#1074#1072#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000090000
      000E000000100000001000000010000000100000001000000011000000110000
      0011000000110000001100000011000000100000000B0000000377544AC1A474
      66FFA47465FFA47465FFA37364FFA37264FFA27263FFA27263FFA27162FFA271
      62FFA17062FFA17061FFA17061FFA17061FF735046C30000000AAC7E71FFF8F1
      EEFFF8F0EDFFF8F1ECFFF8F0ECFFF8F0ECFFF5EDE9FFF2EAE6FFF5EDE9FFF8EF
      EBFFF7EFEBFFF7EFEBFFF7EFEBFFF7F0EBFFA8796AFF0000000FAD8172FFF8F2
      EFFFF6EDE8FFF7EDE8FFF6ECE8FFF4EBE6FFE6DBD6FFA87A62FFE7DCD8FFF5EB
      E6FFF6EDE7FFF6ECE8FFF6ECE8FFF8F0ECFFA97B6BFF00000010AF8375FFF9F2
      EFFFF6ECE8FFF6EDE9FFF6ECE7FFEDE5E0FFAD836EFFC58A51FFB08975FFEDE4
      E0FFF6ECE7FFF6ECE8FFF6ECE8FFF8F1EDFFAA7C6DFF0000000FB18577FFF9F3
      F0FFF7EDE9FFF7EDE8FFF3EAE5FFCDB3A8FFAC6E41FFF7C67AFFA96B40FFCDB6
      ABFFF1E8E4FFF7EDE8FFF6EDE9FFF9F1EDFFAB7E6FFF0000000EB2887AFFF9F4
      F0FFF7EEE9FFF5EBE7FFE4D8D1FFA06544FFEFBE79FFF9CA82FFEDBB78FF9F63
      42FFE3D7D2FFF4EBE7FFF7EEE9FFF8F1EEFFAD8072FF0000000EB48A7CFFF9F4
      F1FFF7EEEAFFF4EBE7FFC69E83FFB47C54FFB47B53FFFACF88FFB37851FFB277
      4FFFC3987EFFF2E9E5FFF7EEE9FFF9F2EFFFAF8274FF0000000DB68D7FFFFAF4
      F2FFF7EEEAFFF6EDE9FFF2E9E5FFE9E1DDFFB77F57FFFDD48EFFB1744CFFE8DF
      DBFFF1E7E4FFF6EDE9FFF7EEEAFFF9F2EFFFB08476FF0000000CB88F82FFFAF5
      F2FFF7EEEAFFF7EEEBFFF7EEEAFFF0E7E5FFBA845CFFFEEAC1FFB2774FFFEFE7
      E3FFF7EEEAFFF7EFEAFFF7EEEAFFF9F3F0FFB28679FF0000000CB99184FFFAF5
      F3FFF8EFEBFFF7EFEAFFF7EFEBFFF2EAE6FFCB9E76FFCB9E76FFCB9E76FFF2E8
      E5FFF7EFEAFFF7EEEAFFF7EFEBFFFAF4F1FFB3897BFF0000000BBB9387FFFAF6
      F4FFF7EFEBFFF7EEEBFFF8EFEBFFF6EDEAFFF2EAE6FFF1E9E5FFF2EAE6FFF6ED
      EAFFF7EFEBFFF7EFEBFFF7EEEBFFFAF3F2FFB58B7DFF0000000AD4A477FFD8B1
      8BFFD2A373FFD1A372FFD1A272FFD1A170FFD0A070FFD09F6FFFCF9F6EFFCE9E
      6DFFCF9D6CFFCE9C6BFFCE9C6AFFD3A77CFFCE9764FF00000009D4A678FFEED7
      B6FFE2BB87FFE2BA86FFE2B985FFE2BA85FFE2BA85FFE1B984FFE1B984FFE1B8
      84FFE1B883FFE1B883FFE0B783FFEBD0AAFFCE9864FF00000009D4A679FFF1DC
      BCFFF0DCBCFFF0DBBCFFF0DBBCFFF0DCBBFFEFDABBFFEFDABBFFEFDABAFFEFDA
      B9FFEFD8B9FFEFD9B8FFEFD8B6FFEED5B1FFCE9865FF000000089E7B5AC0D4A6
      79FFD4A577FFD4A476FFD3A375FFD3A272FFD2A071FFD1A06FFFD09F6FFFD09D
      6DFFD09C6CFFD09B6AFFCF9B68FFCF9A67FF99714BC200000005}
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn1Click
  end
  object DBFilePath: TDBRichEdit
    Left = 2
    Top = 474
    Width = 980
    Height = 41
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'resume_doc_filepath'
    DataSource = UniDSResumes
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ScrollBars = ssBoth
    TabOrder = 16
    WantTabs = True
    OnSaveClipboard = DBRichEditorSaveClipboard
  end
  object UniResumes: TUniQuery
    UpdatingTable = 'resumes'
    SQLInsert.Strings = (
      'INSERT INTO resumes'
      
        '  (id, name, lang, region_id, job_opportunity, job_place, phone_' +
        'numbers_text, resume_introduction, archived, created, updated)'
      'VALUES'
      
        '  (:id, :name, :lang, :region_id, :job_opportunity, :job_place, ' +
        ':phone_numbers_text, :resume_introduction, :archived, :created, ' +
        ':updated)')
    SQLDelete.Strings = (
      'DELETE FROM resumes'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE resumes'
      'SET'
      
        '  id = :id, name = :name, lang = :lang, region_id = :region_id, ' +
        'job_opportunity = :job_opportunity, job_place = :job_place, phon' +
        'e_numbers_text = :phone_numbers_text, resume_introduction = :res' +
        'ume_introduction, archived = :archived, created = :created, upda' +
        'ted = :updated'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      
        'SELECT id, name, lang, region_id, job_opportunity, job_place, ph' +
        'one_numbers_text, resume_introduction, archived, created, update' +
        'd FROM resumes'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id, name, lang, region_id, job_opportunity, job_place, ph' +
        'one_numbers_text, resume_introduction, archived, created, update' +
        'd FROM resumes'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM resumes')
    DataTypeMap = <
      item
        FieldName = 'name'
        FieldType = ftWideString
      end>
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select '
      '  id ,'
      '  lang,'
      '  region_id, '
      
        '  (select max(region_name) from regions where id = region_id) co' +
        'untry,'
      
        '  (select count(*) from experiences e where e.resume_id = t.id) ' +
        'cntr_exp, '
      
        '  (select count(*) from skill_show_lists l, experiences e where ' +
        'l.experience_id = e.id and e.resume_id = t.id) cntr_skills, '
      '  name ,'
      '  job_opportunity ,'
      '  job_place ,'
      '  phone_numbers_text ,'
      '  resume_introduction, '
      '  cv_introduction, '
      '  cl_text,'
      '  resume_doc_filepath,'
      '  cv_doc_filepath,'
      '  cl_doc_filepath,'
      '  resume_pdf_filepath,'
      '  cv_pdf_filepath,'
      '  cl_pdf_filepath,'
      '  archived,'
      '  created ,'
      '  updated '
      'from resumes t'
      
        '  WHERE :p_rg = 2 OR (:p_rg = 1 AND archived = 1) OR (:p_rg = 0 ' +
        'and archived = 0)'
      'order by archived, id ')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Active = True
    OnCalcFields = UniResumesCalcFields
    Left = 288
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_rg'
        ParamType = ptInput
        Value = 0
      end>
    object UniResumesid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object UniResumeslang: TWideStringField
      FieldName = 'lang'
      Size = 3
    end
    object UniResumesregion_id: TWideStringField
      FieldName = 'region_id'
      Size = 2
    end
    object UniResumescountry: TWideStringField
      FieldName = 'country'
      ReadOnly = True
      Size = 10
    end
    object UniResumescntr_exp: TLargeintField
      FieldName = 'cntr_exp'
      ReadOnly = True
    end
    object UniResumescntr_skills: TLargeintField
      FieldName = 'cntr_skills'
      ReadOnly = True
    end
    object UniResumesname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object UniResumesjob_opportunity: TWideStringField
      FieldName = 'job_opportunity'
      Size = 255
    end
    object UniResumesjob_place: TWideStringField
      FieldName = 'job_place'
      Size = 255
    end
    object UniResumesphone_numbers_text: TWideStringField
      FieldName = 'phone_numbers_text'
      Size = 255
    end
    object UniResumesresume_introduction: TWideMemoField
      FieldName = 'resume_introduction'
      BlobType = ftWideMemo
    end
    object UniResumescv_introduction: TWideMemoField
      FieldName = 'cv_introduction'
      BlobType = ftWideMemo
    end
    object UniResumescl_text: TWideMemoField
      FieldName = 'cl_text'
      BlobType = ftWideMemo
    end
    object UniResumesresume_doc_filepath: TWideStringField
      FieldName = 'resume_doc_filepath'
      Size = 510
    end
    object UniResumescv_doc_filepath: TWideStringField
      FieldName = 'cv_doc_filepath'
      Size = 510
    end
    object UniResumescl_doc_filepath: TWideStringField
      FieldName = 'cl_doc_filepath'
      Size = 510
    end
    object UniResumesresume_pdf_filepath: TWideStringField
      FieldName = 'resume_pdf_filepath'
      Size = 510
    end
    object UniResumescv_pdf_filepath: TWideStringField
      FieldName = 'cv_pdf_filepath'
      Size = 510
    end
    object UniResumescl_pdf_filepath: TWideStringField
      FieldName = 'cl_pdf_filepath'
      Size = 510
    end
    object UniResumesarchived: TBooleanField
      FieldName = 'archived'
    end
    object UniResumescreated: TDateTimeField
      FieldName = 'created'
    end
    object UniResumesupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniDSResumes: TUniDataSource
    AutoEdit = False
    DataSet = UniResumes
    Left = 464
    Top = 112
  end
  object UniDeleteResume: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'DELETE from resumes WHERE id = :p_id')
    Left = 616
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UniDeleteResumeFooters: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'DELETE from resume_footers WHERE resume_id = :p_resume_id')
    Left = 616
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UniDeleteExperiences: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'DELETE from experiences WHERE resume_id = :p_resume_id')
    Left = 616
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UniArchiveResume: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'update resumes '
      'set archived = 1'
      'WHERE id = :p_id')
    Left = 288
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UniResumeFooters: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select '
      '  id, '
      '  resume_id, '
      '  footer_header, '
      '  footer_text, '
      '  footer_order,'
      '  cv_include_footer'
      'from resume_footers'
      '  where resume_id = :p_resume_id'
      '  order by footer_order')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnCalcFields = UniResumesCalcFields
    Left = 464
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniResumeFootersid: TIntegerField
      FieldName = 'id'
    end
    object UniResumeFootersresume_id: TIntegerField
      FieldName = 'resume_id'
      Required = True
    end
    object UniResumeFootersfooter_header: TWideStringField
      FieldName = 'footer_header'
      Size = 255
    end
    object UniResumeFootersfooter_text: TWideMemoField
      FieldName = 'footer_text'
      BlobType = ftWideMemo
    end
    object UniResumeFootersfooter_order: TIntegerField
      FieldName = 'footer_order'
    end
    object UniResumeFooterscv_include_footer: TBooleanField
      FieldName = 'cv_include_footer'
      Required = True
    end
  end
  object UniExperiences: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT '
      '  id ,'
      '  resume_id ,'
      '  template_id ,'
      
        '  row_number() over (partition by resume_id, template_id order b' +
        'y start_date desc) as job_order,'
      '  job_position ,'
      '  start_date ,'
      '  end_date ,'
      '  employer ,'
      '  responsibilities ,'
      '  benefits ,'
      '  other'
      'FROM experiences '
      'WHERE resume_id = :p_resume_id'
      'order by start_date desc')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnCalcFields = UniResumesCalcFields
    Left = 768
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_resume_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniExperiencesid: TIntegerField
      FieldName = 'id'
    end
    object UniExperiencesresume_id: TIntegerField
      FieldName = 'resume_id'
    end
    object UniExperiencestemplate_id: TIntegerField
      FieldName = 'template_id'
    end
    object UniExperiencesjob_order: TLargeintField
      FieldName = 'job_order'
      ReadOnly = True
      Required = True
    end
    object UniExperiencesjob_position: TWideStringField
      FieldName = 'job_position'
      Size = 255
    end
    object UniExperiencesstart_date: TDateField
      FieldName = 'start_date'
      Required = True
    end
    object UniExperiencesend_date: TDateField
      FieldName = 'end_date'
    end
    object UniExperiencesemployer: TWideStringField
      FieldName = 'employer'
      Size = 255
    end
    object UniExperiencesresponsibilities: TWideMemoField
      FieldName = 'responsibilities'
      BlobType = ftWideMemo
    end
    object UniExperiencesbenefits: TWideMemoField
      FieldName = 'benefits'
      BlobType = ftWideMemo
    end
    object UniExperiencesother: TWideMemoField
      FieldName = 'other'
      BlobType = ftWideMemo
    end
  end
  object UniSkillsID: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'SELECT '
      'skill_id,'
      '(SELECT skill from skills s WHERE l.skill_id = s.id) skill'
      'FROM skill_show_lists l'
      'WHERE experience_id = :p_experience_id'
      'ORDER BY skill_id')
    Left = 760
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_experience_id'
        ParamType = ptInput
        Value = nil
      end>
    object UniSkillsIDskill_id: TIntegerField
      FieldName = 'skill_id'
      Required = True
    end
    object UniSkillsIDskill: TWideStringField
      FieldName = 'skill'
      ReadOnly = True
      Size = 255
    end
  end
  object UniSPUpdateFilepathes: TUniStoredProc
    StoredProcName = 'update_filepathes'
    SQL.Strings = (
      
        'CALL update_filepathes(:p_name, :p_region_id, :p_resume_doc_file' +
        'path, :p_cv_doc_filepath, :p_cl_doc_filepath, :p_resume_pdf_file' +
        'path, :p_cv_pdf_filepath, :p_cl_pdf_filepath)')
    Connection = FormMain.UniConnection
    Left = 896
    Top = 200
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
        Name = 'p_region_id'
        ParamType = ptInput
        Size = 2
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_resume_doc_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_cv_doc_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_cl_doc_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_resume_pdf_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_cv_pdf_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_cl_pdf_filepath'
        ParamType = ptInput
        Size = 510
        Value = nil
      end>
    CommandStoredProcName = 'update_filepathes'
  end
end
