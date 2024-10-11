object FormSkills: TFormSkills
  Left = 0
  Top = 0
  Caption = 'Skills'
  ClientHeight = 662
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  DesignSize = (
    988
    662)
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 571
    Width = 49
    Height = 21
    Caption = #1055#1086#1096#1091#1082
  end
  object BitBtnClose: TBitBtn
    Left = 853
    Top = 614
    Width = 88
    Height = 40
    Anchors = [akRight, akBottom]
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
    Height = 554
    DataSource = UniDSSkills
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
        FieldName = 'skill_id'
        Title.Alignment = taCenter
        Title.Caption = '#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'category'
        Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'skill'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'category_id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'updated'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object BitBtnNewSkill: TBitBtn
    Left = 8
    Top = 614
    Width = 138
    Height = 40
    Caption = #1044#1086#1073#1072#1074#1080#1090#1080' '#1089#1082#1110#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      000000000000000000001C6020322FAB369935C53DDB36CA3EF936CA3EF935C5
      3DDB2FAC37991D63213200000000000000000000000000000000000000000000
      00000E30100A31AC389B37CE40FB37D340FD38D441FF39D442FF39D442FF38D4
      41FF37D340FD37CE40FB31AE399B0F34110A0000000000000000000000000E31
      100A36BE3EC139D342FD39D542FF3AD643FF52D75AFFA6E3A9FFA3E3A6FF49D6
      52FF3AD643FF39D542FF39D342FD36BF3EC11035120A000000000000000034B1
      3B9B3AD443FD3BD543FF3BD644FF3CD645FF97E89CFFFBFEFBFFFBFEFBFF84E4
      8AFF3CD644FF3BD644FF3BD543FF3AD443FD35B43C9B000000001F6523323CD2
      45FB3CD645FF3CD746FF3CD746FF3ED747FF9BEA9FFFFDFEFDFFFCFEFCFF87E6
      8DFF3ED747FF3CD746FF3CD746FF3CD645FF3CD245FB206B253235B53D993DD7
      47FD3ED848FF3FD849FF3FD849FF41D84AFF9BEAA0FFFDFEFDFFFDFEFDFF89E7
      8FFF40D84AFF3FD849FF3FD849FF3ED848FF3DD747FD37B93F993ED247DB40D8
      49FF57D85FFF8EDF93FF90DF95FF91DF96FFC5EEC8FFFEFEFEFFFDFEFDFFBAEB
      BDFF91DF96FF90DF95FF8DDF92FF50D858FF40D849FF3ED247DB41D74AF943D9
      4CFFB2EDB7FFFBFEFBFFFCFEFDFFFDFEFDFFFDFEFDFFFEFEFEFFFEFEFEFFFDFE
      FDFFFDFEFDFFFCFEFDFFFBFEFBFF9FEAA4FF43D94CFF41D74AF943D94CF944DA
      4EFFB3EFB8FFFBFEFBFFFCFEFDFFFDFEFDFFFDFEFEFFFEFEFEFFFEFEFEFFFDFE
      FDFFFDFEFDFFFCFEFDFFFBFEFBFFA0ECA5FF44DA4EFF43D94CF944DA4DDB45DB
      4EFF59DF62FF8EE994FF90E996FF91E997FFC6F4C9FFFEFEFEFFFDFEFDFFBBF1
      BEFF91E997FF90E996FF8DE893FF53DD5CFF45DB4EFF44DA4DDB3FC6479945DB
      4FFD46DC50FF47DC51FF47DC51FF48DC52FF9FECA5FFFDFEFDFFFDFEFDFF8EE9
      94FF48DC52FF47DC51FF47DC50FF46DC50FF45DB4FFD40CB499927792C3247D9
      51FB47DB51FF47DC51FF47DC51FF49DC53FFA0EDA5FFFDFEFDFFFCFEFCFF8EE9
      94FF49DC53FF47DC51FF47DC51FF47DB51FF47DA51FB29802F320000000042C9
      4B9B48DB52FD49DC53FF49DD53FF4ADD54FF9FECA4FFFBFEFBFFFBFEFBFF8DE9
      93FF49DD53FF49DD53FF49DC53FF48DB52FD43CC4C9B00000000000000001541
      180A48D651C14ADC54FD4ADD54FF4BDE55FF60E169FFAAEFAFFFA8EEACFF58E0
      62FF4BDE55FF4ADD54FF4ADC54FD48D752C117461A0A00000000000000000000
      00001642190A45CC4F9B4CDC55FB4CDE56FD4DDF57FF4EDF58FF4EDF58FF4DDF
      57FF4CDE56FD4CDC55FB46CE4F9B17471B0A0000000000000000000000000000
      000000000000000000002B7E313247CD50994DDE57DB4DDF57F94DDF57F94DDE
      57DB48CF51992D82323200000000000000000000000000000000}
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtnNewSkillClick
  end
  object BitBtnEditSkill: TBitBtn
    Left = 177
    Top = 614
    Width = 121
    Height = 40
    Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000D0D
      0D16272727BF1818183E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      09022B2B2BF3323232FDA5A5A5B7757575340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      0902797979D7D1D1D1FFF4F4F4FFEDEEEEFDCFD0D0AB4E596022000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2B9F8F8F8FFF5F6F6FFF1F2F3FFA1D0EFFD2A9CE6D5082F470A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9DADA9DF7F8F9FFE3EEF6FF64B9F0FF26A1F0FF209BEAFD1788CF930000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BCBDBE7EB5DAF2FD37A8EFFF24A0EFFF1F9BEBFF219EEEFF1B97E7FB1066
      9C46000000000000000000000000000000000000000000000000000000000000
      00003D688230229CEAF71A95E5FF229FEFFF1E9AEAFF1E9AEAFF1E9AEAFF1893
      E2E3083959120000000000000000000000000000000000000000000000000000
      0000000000001F88CB7A1E9AE9FD1B97E7FF209CECFF1995E5FF1E9AEAFF1A97
      E6FD1488D3A90000000000000000000000000000000000000000000000000000
      00000000000008243604259DEBC31D98E8FF1D99E9FF1B97E7FF1793E3FF1D99
      E9FF1792E2FD0E6DAA5C00000000000000000000000000000000000000000000
      0000000000000000000015537A24249FEEF11B97E7FF1B98E8FF1692E2FF1894
      E4FF1A96E6FF168FDEED0D476D1E000000000000000000000000000000000000
      00000000000000000000000000002383BF64229DEDFD1B97E7FF1995E5FF1490
      E0FF1B97E6FF329BDFFFAFCBDECB3A3B3F080000000000000000000000000000
      000000000000000000000000000000000000299DE8B1219CECFD1B96E6FF1791
      E0FF64AFE1FFD5DEEAFF8F90E7FD3B3BB8700000000000000000000000000000
      0000000000000000000000000000000000001747661628A3F1E731A1E9FFA5CD
      E8FFC8C9E9FF6161E3FF4444E1FF4545E1F31919501000000000000000000000
      00000000000000000000000000000000000000000000538DB35AD3E0ECFD999A
      E4FF4848E1FF4545E2FF4646E4FD4545DCAD1010340400000000000000000000
      00000000000000000000000000000000000000000000272829026869CFA74444
      E1FD4646E3FD4747E4F13B3BB962000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000017174D0E4646
      E2D34848E4C327277D2400000000000000000000000000000000}
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnEditSkillClick
  end
  object BitBtnDeleteSkill: TBitBtn
    Left = 329
    Top = 614
    Width = 121
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
      000000000000000000002E2E74324545C2994646D8DB4242D9F94242D9F94646
      D8DB4646C4993030773200000000000000000000000000000000000000000000
      000018183B0A4747C59B3E3ED7FB3C3CDAFD3C3CDAFF3C3CDAFF3C3CDAFF3C3C
      DAFF3C3CDAFD3E3ED7FB4848C79B1A1A400A0000000000000000000000001818
      3B0A4848D3C13D3DDAFD3D3DDBFF3D3DDCFF3D3DDCFF3D3DDCFF3D3DDCFF3D3D
      DCFF3D3DDCFF3D3DDBFF3D3DDAFD4848D4C11A1A410A00000000000000004747
      C79B3F3FDCFD4141DDFF7A7ADEFF7979DEFF4040DDFF3F3FDDFF3F3FDEFF4141
      DDFF8282DEFF7070DDFF4040DEFF3F3FDCFD4848CB9B000000002E2E77324141
      DCFB4141DEFF8282E2FFF3F3F7FFF4F4F7FF8B8BE1FF4242DFFF4242DFFF9C9C
      E3FFF5F5F8FFF0F0F6FF7373E1FF4040DEFF4141DCFB31317E324545C8994141
      E0FD4343E1FF9C9CECFFF7F7F9FFF8F8F9FFF5F5F7FF8D8DE2FF9E9EE4FFF6F6
      F8FFF8F8F9FFF6F6F9FF8A8AE9FF4242E1FF4141E0FD4747CE994747E1DB4444
      E1FF4444E2FF4747E2FFB5B5F0FFF8F8F9FFF8F8F9FFF6F6F7FFF7F7F8FFF8F8
      F9FFF7F7F9FFA4A4EEFF4646E2FF4444E2FF4444E1FF4747E1DB4646E3F94545
      E3FF4545E3FF4545E4FF4A4AE4FFB6B6F1FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8
      F9FFA6A6EFFF4747E4FF4545E4FF4545E3FF4545E3FF4646E3F94646E5F94646
      E5FF4646E5FF4747E5FF4949E5FFA2A2E7FFF9F9F9FFFAFAFAFFF9F9F9FFF7F7
      F8FF9090E5FF4949E5FF4747E5FF4646E5FF4646E5FF4646E5F94747E6DB4747
      E6FF4848E6FF4A4AE6FF9F9FE7FFF6F6F8FFF8F8F9FFF9F9F9FFF9F9F9FFF8F8
      F9FFF5F5F7FF9090E5FF4949E7FF4848E6FF4747E6FF4747E6DB4242D2994949
      E7FD4A4AE8FF9292E9FFF6F6F8FFF8F8F9FFF7F7F9FFA9A9F2FFB8B8F3FFF8F8
      F9FFF8F8F9FFF4F4F7FF8383E8FF4A4AE8FF4949E7FD4444D799292980324B4B
      E7FB4C4CE9FF9898F0FFF6F6F9FFF7F7F9FFA8A8F2FF4E4EEAFF5050EAFFB8B8
      F3FFF7F7F9FFF5F5F8FF8787EEFF4C4CE9FF4B4BE7FB2B2B8832000000004545
      D79B4D4DE9FD4F4FEBFF9999F1FF9898F1FF4F4FEBFF4D4DEBFF4D4DEBFF5151
      EBFFA1A1F2FF8D8DF0FF4E4EEBFF4D4DE9FD4747DA9B00000000000000001616
      450A4B4BE5C14F4FEBFD4F4FECFF4F4FEDFF4F4FEDFF4E4EECFF4E4EECFF4F4F
      EDFF4F4FEDFF4F4FECFF4F4FEBFD4C4CE6C118184B0A00000000000000000000
      00001717460A4949DB9B4F4FEBFB4F4FEDFD4F4FEDFF5050EEFF5050EEFF4F4F
      EDFF4F4FEDFD4F4FEBFB4949DD9B19194B0A0000000000000000000000000000
      000000000000000000002E2E88324A4ADC995151EFDB5151EFF95151EFF95151
      EFDB4B4BDE992F2F8B3200000000000000000000000000000000}
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnDeleteSkillClick
  end
  object EditSearch: TEdit
    Left = 72
    Top = 568
    Width = 121
    Height = 29
    TabOrder = 5
    Text = 'EditSearch'
  end
  object BitBtnSearch: TBitBtn
    Left = 208
    Top = 570
    Width = 41
    Height = 25
    Caption = '-->'
    TabOrder = 6
    OnClick = BitBtnSearchClick
  end
  object UniSkills: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      
        'SELECT skill_id, skill, category_id, category, created, updated ' +
        ' FROM'
      '(SELECT '
      's.id skill_id, s.skill, '
      'category_id, category,'
      's.created,'
      's.updated '
      'FROM skills s'
      'LEFT join skills_categories sc'
      'on sc.id = s.category_id '
      'order by skill) R'
      'WHERE lower(skill) LIKE concat('#39'%'#39',lower(:p_filter),'#39'%'#39')')
    Active = True
    Left = 496
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'p_filter'
        Value = ''
      end>
    object UniSkillsid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'skill_id'
    end
    object UniSkillsskill: TWideStringField
      FieldName = 'skill'
      Size = 255
    end
    object UniSkillscategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object UniSkillscategory: TWideStringField
      FieldName = 'category'
      Size = 255
    end
    object UniSkillscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniSkillsupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniDSSkills: TUniDataSource
    AutoEdit = False
    DataSet = UniSkills
    Left = 496
    Top = 168
  end
  object UniSPDeleteSkills: TUniStoredProc
    StoredProcName = 'delete_skills'
    SQL.Strings = (
      'CALL delete_skills(:p_skill_id)')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    Left = 496
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_skill_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'delete_skills'
  end
end
