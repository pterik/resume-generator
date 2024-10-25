object FormTemplatesList: TFormTemplatesList
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085#1099
  ClientHeight = 661
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  DesignSize = (
    984
    661)
  TextHeight = 21
  object BitBtnClose: TBitBtn
    Left = 856
    Top = 613
    Width = 120
    Height = 40
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
    TabOrder = 0
    OnClick = BitBtnCloseClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 984
    Height = 441
    DataSource = UniDSTemplates
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
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
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1055#1086#1089#1072#1076#1072
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'job_opportunity'
        Title.Caption = #1055#1086#1089#1072#1076#1072' '#1087#1086#1074#1085#1110#1089#1090#1102
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'job_place'
        Title.Caption = #1052#1110#1089#1094#1077' '#1088#1086#1073#1086#1090#1080
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_numbers_text'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085#1080
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cntr_exp'
        Title.Caption = '# jobs'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cntr_skills'
        Title.Caption = '# skills'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'archive'
        Title.Caption = #1040#1088#1093#1080#1074
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'updated'
        Title.Caption = #1054#1085#1086#1074#1083#1077#1085#1086
        Visible = True
      end>
  end
  object BitBtnNewTemplate: TBitBtn
    Left = 10
    Top = 614
    Width = 140
    Height = 40
    Caption = #1053#1086#1074#1080#1081' '#1096#1072#1073#1083#1086#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000070000
      000D0000000F0000000D00000007000000020000000000000000000000020000
      00090000000F00000010000000110000001100000014020101214C28168E8648
      27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
      56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
      69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
      79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
      7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
      7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
      AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
      81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
      1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
      86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
      9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
      8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
      B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
      8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
      CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
      93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
      8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
      97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
      F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
      9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
      F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
      9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
      F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
      A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
      F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
      A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
      FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
      7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
      A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtnNewTemplateClick
  end
  object BitBtnEditTemplate: TBitBtn
    Left = 170
    Top = 614
    Width = 140
    Height = 40
    Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080' (F4)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000900000011000000140000
      00120000000A0000000200000000000000000000000000000000000000000000
      00000000000000000000000000020000000D411F0E9397532BFF914D26FF8C45
      21FF47210F9B0000001000000002000000000000000000000000000000000000
      000000000000000000000000000742221190B17D53FFE1BA86FFE4CA9FFFA761
      32FF99542AFF1E101F9B0000000F000000020000000000000000000000000000
      0000000000000000000000000009AE7247FFE5C18FFFE4BF8DFFE4BF8DFFE7D0
      A5FF9D6E6EFF2D259FFF07073A990000000D00000002000000000000000B0000
      001100000012000000120000002063442E9DD0A478FFE7C69AFFE7C495FFB0A6
      BFFFB0B9EEFF463DC7FF302BA6FF0B0A3F960000000C00000002714F44C29E6D
      5DFF9E6C5DFF9D6C5CFFB59084FFCEB5ADFFBD977EFFD4AC82FFBAB2C7FF8493
      E9FF8494EAFFB6C2F0FF4742C9FF3532ADFF0F0E47930000000BA17162FFF9F2
      EFFFF7EEE9FFF7EEEAFFC29F93FFF9F2EEFFF7F5F4FFB6ABBEFF737DD7FF95A5
      EDFF8E9FEDFF8D9EEDFFBCC8F2FF4846CBFF3B3AB5FF13134C8EA47567FFF9F2
      F0FFF7EEEBFFF7EEEAFFC3A095FFF7EEEAFFFAF2EFFFBFA69BFF8F8DC3FF7B87
      DBFF9FB0F1FF97AAF1FF97AAF0FFC1CEF5FF5353D1FF393BADFFAD724AFFD2A8
      81FFC48F62FFC48F62FFC48F62FFC38F62FFC38E61FFD2AA87FFC3ABA0FFA2A5
      DBFF8290E0FFA9B9F4FFA0B4F3FFA7B9F5FF7D85CDFF15174E88B2774EFFEDD8
      B6FFE7CCA0FFE8CCA1FFC69265FFE7CCA1FFE7CCA0FFE7CCA0FFD3AB8AFFF9F6
      F4FF9793C6FF8896E4FFB7C8F7FF7783D5FF1A1E588600000005B57D53FFEED9
      B6FFE7CDA1FFE8CCA1FFC79569FFE7CDA1FFE8CCA2FFE7CCA1FFC69366FFF9F4
      F1FFDBC7C0FFAAADE2FF606BD6FF1F245F890000000400000001B98359FFD8B0
      8CFFCB996EFFCA9A6DFFCA996DFFC9986CFFC9976CFFC9976BFFC9976BFFC7A6
      9BFFD4BCB3FFEADCD8FFD6C0B8FF0000000A0000000000000000BD885FFFEEDA
      B8FFE9CEA3FFE8CDA3FFCC9D70FFE8CEA3FFE8CDA3FFE8CDA3FFCB9B6FFFF7F0
      EEFFF8F0EDFFFAF4F2FFB08577FF000000090000000000000000C08E64FFEFDA
      B9FFEEDAB8FFEEDAB8FFDAB591FFEEDAB8FFEFDAB8FFEEDAB8FFD9B48EFFFAF4
      F2FFFAF5F2FFFAF5F2FFB48A7CFF000000080000000000000000916D4DC1C292
      67FFC29167FFC29066FFC18F65FFC08E64FFBF8C63FFBF8C62FFBE8B61FFBA91
      83FFB89083FFB88F82FF876A5FC1000000050000000000000000000000030000
      0005000000050000000500000005000000050000000500000005000000060000
      0006000000060000000500000004000000010000000000000000}
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnEditTemplateClick
  end
  object BitBtnDeleteTemplate: TBitBtn
    Left = 330
    Top = 614
    Width = 140
    Height = 40
    Caption = #1042#1080#1076#1072#1083#1080#1090#1080
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
      0008B8826FFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6261D8FFB1C3
      F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
      0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
      DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
      0007BB8776FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
      F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
      0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
      EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
      0006BF8D7BFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
      EEFFF8F1EEFFFDFBF9FFBD8978FF000000080000000000000000000000000000
      0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
      F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
      0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
      F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
      0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
      F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
      0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
      00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
      99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnDeleteTemplateClick
  end
  object BitBtnNewResume: TBitBtn
    Left = 490
    Top = 613
    Width = 140
    Height = 40
    Caption = #1053#1086#1074#1077' '#1088#1077#1079#1102#1084#1077
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
    TabOrder = 5
    OnClick = BitBtnNewResumeClick
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 455
    Width = 968
    Height = 138
    DataField = 'template_introduction'
    DataSource = UniDSTemplates
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object UniTemplates: TUniQuery
    Connection = FormMain.UniConnection
    SQL.Strings = (
      'select '
      '  id ,'
      
        '  (select count(*) from experiences e where e.template_id = t.id' +
        ') cntr_exp, '
      
        '  (select count(*) from skill_show_lists l, experiences e where ' +
        'l.experience_id = e.id and e.template_id = t.id) cntr_skills, '
      '  name ,'
      '  job_opportunity ,'
      '  job_place ,'
      '  phone_numbers_text ,'
      '  template_introduction ,'
      '  archived,'
      '  created ,'
      '  updated '
      'from templates t'
      'order by archived, name')
    ReadOnly = True
    Active = True
    OnCalcFields = UniTemplatesCalcFields
    Left = 288
    Top = 112
    object UniTemplatesid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object UniTemplatescntr_exp: TLargeintField
      FieldName = 'cntr_exp'
      ReadOnly = True
    end
    object UniTemplatescntr_skills: TLargeintField
      FieldName = 'cntr_skills'
      ReadOnly = True
    end
    object UniTemplatesname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object UniTemplatesjob_opportunity: TWideStringField
      FieldName = 'job_opportunity'
      Size = 255
    end
    object UniTemplatesjob_place: TWideStringField
      FieldName = 'job_place'
      Size = 255
    end
    object UniTemplatesphone_numbers_text: TWideStringField
      FieldName = 'phone_numbers_text'
      Size = 255
    end
    object UniTemplatestemplate_introduction: TWideMemoField
      FieldName = 'template_introduction'
      BlobType = ftWideMemo
    end
    object UniTemplatescreated: TDateTimeField
      FieldName = 'created'
    end
    object UniTemplatesupdated: TDateTimeField
      FieldName = 'updated'
    end
    object UniTemplatesarchived: TShortintField
      FieldName = 'archived'
    end
  end
  object UniDSTemplates: TUniDataSource
    AutoEdit = False
    DataSet = UniTemplates
    Left = 464
    Top = 112
  end
  object UniSPDeleteTemplate: TUniStoredProc
    StoredProcName = 'delete_template_all'
    SQL.Strings = (
      'CALL delete_template_all(:p_template_id)')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    Left = 616
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_template_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'delete_template_all'
  end
end
