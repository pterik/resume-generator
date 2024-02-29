object FormListResumes: TFormListResumes
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1091#1089#1110#1093' '#1088#1077#1079#1102#1084#1077
  ClientHeight = 660
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    980
    660)
  TextHeight = 15
  object Label4: TLabel
    Left = 8
    Top = 526
    Width = 247
    Height = 21
    Caption = #1050#1086#1087#1110#1103' '#1079' '#1096#1072#1073#1083#1086#1085#1091' (t) '#1072#1073#1086' '#1088#1077#1079#1102#1084#1077' (r)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 8
    Width = 980
    Height = 417
    DataSource = UniDSResumes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
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
        FieldName = 'name'
        Title.Caption = #1053#1072#1079#1074#1072
        Width = 77
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
        FieldName = 'job_opportunity'
        Title.Caption = #1056#1086#1073#1086#1090#1072
        Width = 79
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
        FieldName = 'resume_introduction'
        Title.Caption = #1042#1074#1077#1076#1077#1085#1085#1103
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'archive'
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
      end>
  end
  object BitBtnEditResume: TBitBtn
    Left = 172
    Top = 566
    Width = 121
    Height = 30
    Anchors = [akLeft, akBottom]
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
    TabOrder = 1
    OnClick = BitBtnEditResumeClick
    ExplicitTop = 565
  end
  object BitBtnDeleteResume: TBitBtn
    Left = 172
    Top = 612
    Width = 121
    Height = 30
    Anchors = [akLeft, akBottom]
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
    TabOrder = 2
    OnClick = BitBtnDeleteResumeClick
    ExplicitTop = 611
  end
  object BitBtnNewResume: TBitBtn
    Left = 3
    Top = 566
    Width = 140
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = #1053#1086#1074#1077' '#1088#1077#1079#1102#1084#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000333333052824306A29252FC6292430F22824
      30F329252FC52824306A33333305000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028283513282430C9292530FF292530FF292530FF2925
      30FF292530FF292530FF29252FCC282833190000000000000000000000000000
      0000292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF2B3138F53E7C6BFF469E82FF469F
      83FF3E7B6BFF2B3338F4292530FF29252FCC3333330500000000000000000000
      0000292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF46454DFF469D81FF48A687FF48A687FF48A6
      87FF48A687FF469D80FF2B3338F4292530FF2824306A00000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFE5E9DBFF89C5B1FF48A687FF48A687FFA4D3C3FFA4D3
      C3FF48A687FF48A687FF3E7B6BFF292530FF29252FC600000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFF9FBF8FF5AAF93FF48A687FFA4D3C3FFD2E9E1FFD2E9
      E1FFA4D3C3FF48A687FF469E82FF292530FF292430F200000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFF9FBF9FF51AB8DFF48A687FFA4D3C3FFD2E9E1FFD2E9
      E1FFA4D3C3FF48A687FF469E82FF292530FF29252FF100000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFE9ECE0FF84C3AFFF48A687FF48A687FFA4D3C3FFA4D3
      C3FF48A687FF48A687FF3E7C6BFF292530FF29252FC700000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFD1CDA5FFEEF6F1FF55AC8FFF48A687FF48A687FF48A6
      87FF48A687FF469D81FF2B3338F4292530FF2824306A00000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFDEDEC5FFEEF6F1FF84C3AFFF51AB8DFF56AD
      90FF7CBFA9FF45454CFF292530FF282430C93333330500000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFD1CDA5FFE9ECE0FFFAFCF9FFF9FB
      F8FFE5E9DBFF292530FF292530FF282835130000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB579FFBAB5
      79FFBAB579FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B44FFB39B
      44FFB39B44FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF000000000000000000000000000000000000
      0000292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF292530FF292530FF292530FF292530FF2925
      30FF292530FF292530FF292530FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnNewResumeClick
    ExplicitTop = 565
  end
  object BitBtnClose: TBitBtn
    Left = 838
    Top = 612
    Width = 115
    Height = 30
    Anchors = [akRight, akBottom]
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
    ExplicitLeft = 834
    ExplicitTop = 611
  end
  object EditCopyNumber: TEdit
    Left = 272
    Top = 523
    Width = 121
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtnCheck: TBitBtn
    Left = 493
    Top = 566
    Width = 135
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'DOCX '#1085#1072' '#1089#1072#1081#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtnCheckClick
    ExplicitTop = 565
  end
  object BitBtnCV: TBitBtn
    Left = 658
    Top = 566
    Width = 146
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'CV DOCX '#1085#1072' '#1089#1072#1081#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtnCVClick
    ExplicitTop = 565
  end
  object BitBtnLetter: TBitBtn
    Left = 658
    Top = 612
    Width = 146
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = #1042#1110#1076#1082#1088#1080#1090#1080' CL DOCX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtnLetterClick
    ExplicitTop = 611
  end
  object BitBtnPDF: TBitBtn
    Left = 838
    Top = 566
    Width = 115
    Height = 30
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
    ExplicitLeft = 834
    ExplicitTop = 565
  end
  object BitBtnOpenTmpl: TBitBtn
    Left = 493
    Top = 612
    Width = 135
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = #1042#1110#1076#1082#1088#1080#1090#1080' '#1096#1072#1073#1083#1086#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtnOpenTmplClick
    ExplicitTop = 611
  end
  object BitBtnSaveResume: TBitBtn
    Left = 334
    Top = 566
    Width = 131
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1088#1077#1079#1102#1084#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtnSaveResumeClick
    ExplicitTop = 565
  end
  object CheckBoxExtraComment: TCheckBox
    Left = 424
    Top = 529
    Width = 169
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = #1041#1110#1083#1100#1096#1077' '#1082#1086#1084#1077#1085#1090#1072#1088#1110#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    ExplicitTop = 528
  end
  object BitBtnArchive: TBitBtn
    Left = 3
    Top = 616
    Width = 140
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = #1042' '#1072#1088#1093#1080#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000605
      0400070605050101016F00000097000000950000009500000095000000950000
      0095000000950000009500000095000000950000009500000095000000950000
      0095000000950000009501010043000000000B07040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000009060504C029231BFF332C22FF332B22FF332B22FF332B22FF332B
      22FF332B22FF332B22FF332B22FF332B22FF332B22FF332B22FF332B22FF332B
      22FF2B2415FF0F0C04FF010100D90504013E0202010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000090A0907C0493E30FF5B4D3CFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C
      3BFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C3BFF5A4C
      3BFF4C3F24FF1D1708FF160E06FF070502D10000003200000000020201000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF584B3AFF584B3AFF584B
      3AFF584B3AFF584B3AFF584B3AFF584B3AFF584B3AFF584B3AFF584B3AFF584B
      3AFF493C22FF1C1608FF291A0AFF261C0BFF040401CE00000031000000001E19
      0900000000000000000000000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF584B3AFF584B3AFF594C
      3AFF594C3AFF594C3AFF594C3AFF594C3AFF594C3AFF584B3AFF584B3AFF574A
      39FF473A1EFF1C1608FF291A0AFF403013FF251E0BFF040301CC0101002F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF584B3AFF554838FF4D42
      33FF4D4133FF4D4233FF4D4233FF4D4133FF4E4233FF564939FF584B3AFF5649
      37FF45381BFF1C1608FF291A0AFF403013FF413414FF241D0BFF050402C30404
      0125030301000000000000000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF584B3AFF2C261DFF110F
      0BFF15120EFF15120EFF15120EFF15120EFF110F0BFF352D23FF594C3BFF5346
      32FF433616FF1C1609FF291A0AFF403013FF413414FF403414FF231C0BFF0403
      01B60000001C0000000000000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF594C3BFF4A3F31FF17140FFF4339
      2CFF4D4233FF4D4233FF4D4233FF4E4233FF3E3429FF17140FFF4E4334FF4E40
      28FF413414FF1C1609FF291A0AFF403013FF413414FF413414FF403314FF2019
      0AFF020100B20000001B00000000000000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF504435FF43392CFF584B
      3AFF594C3AFF594C3AFF594C3AFF594C3AFF574B3AFF41382CFF4D412FFF4538
      1AFF413414FF1C1609FF291A0AFF403113FF423514FF413414FF413414FF3E32
      13FF1D1709FF020101B20302011B010000000000000000000000000000000000
      0000000000090A0806C0483D2FFF594C3BFF584B3AFF584B3AFF594C3BFF584B
      3AFF584B3AFF584B3AFF584B3AFF584B3AFF584B3BFF564835FF483B1FFF4134
      14FF413414FF1C1609FF291A0AFF2D210DFF342A10FF423514FF413414FF4134
      14FF3E3213FF1B1608FF0302019C090602040705020000000000000000000000
      0000000000090A0807C0483D30FF594C3BFF584B3AFF584B3AFF584B3AFF584B
      3BFF584B3BFF584B3AFF584B39FF554835FF4E4129FF45381AFF413414FF4134
      14FF413414FF1C1609FF2A1A0AFF1A1207FF0C0A04FF33290FFF423514FF4134
      14FF423514FF342A10FF060502C0000000090000000000000000000000000000
      0000000000090A0806C0463B2CFF574936FF564936FF564935FF544732FF5345
      30FF50432CFF4D3F26FF493C21FF443719FF423414FF413414FF423414FF4234
      14FF423514FF1D1709FF291A0AFF1E160BFF4E5354FF24231DFF352A10FF4234
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      000000000009070503C0312712FF3C3015FF3B2F14FF3B2F14FF3A2E12FF392D
      11FF382C10FF382C0FFF382C0FFF382C0FFF382C10FF382C10FF382C10FF382C
      10FF392C10FF191307FF2A1B0AFF1E1508FF616767FF4F5454FF241C09FF4235
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      000000000006010100A5070704FB141B1AFF172021FF172020FF172020FF1720
      20FF172021FF172021FF172021FF172021FF172021FF172021FF172021FF1720
      21FF182021FF0E1314FF1D1207FF37290FFF1C190FFF121414FF261E0BFF4235
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      0000000000000000001B0A1114C85C97B2FF74C0E2FF73BEE0FF73BEE0FF73BE
      E0FF73BEE0FF73BEE0FF73BEE0FF73BEE0FF73BEE0FF73BEE0FF73BEE0FF73BE
      E0FF74BFE1FF67A8C6FF1D2C32FF221707FF382C11FF161106FF2D240EFF4235
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      000000000000000000090D1518C069AECBFF86DCFFFF84DAFFFF84DAFFFF84DA
      FFFF84DAFFFF84DAFFFF84DAFFFF84DAFFFF84DAFFFF84DAFFFF84DAFFFF84DA
      FFFF84DAFFFF85DBFFFF375A68FF0A0500FF241A0AFF3E3013FF403314FF4134
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      000001020200000000090A1114BF64A5C1FF85DBFFFF83D8FEFF83D8FEFF83D8
      FEFF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8
      FEFF83D8FEFF84D9FFFF3C5D6BFF563613FF251607FF251A0AFF413314FF4134
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      00000F181C003E66790103040581325261FE7ED0F4FF84DAFFFF84D9FFFF84D9
      FFFF84D9FFFF84D9FFFF83D9FFFF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8
      FEFF83D8FEFF84D9FFFF3A5D6BFF754A19FF8D621BFF292309FF291E0CFF4134
      14FF423514FF352A10FF070502C0000000090000000000000000000000000000
      000000000000090F1200070B0D14060A0BB3457185FF77C5E7FF76C4E7FF76C4
      E7FF76C4E7FF76C3E6FF7DCFF3FF83D8FEFF83D8FEFF83D8FEFF83D8FEFF83D8
      FEFF83D8FEFF84D9FFFF3A5C6BFF714719FFBC8A25FF726318FF040200FF2B20
      0BFF423414FF352A10FF070502C0000000090000000000000000000000000000
      00000000000000000000010102000001012C080E10C216242AF4212A2BFF292F
      2DFF292F2DFF212828FF467285FF86DDFFFF85DCFFFF85DCFFFF85DCFFFF85DC
      FFFF85DCFFFF86DDFFFF3A5E6CFF6E4619FFBB8A24FF796A18FF0B041FFF0F08
      15FF2D210BFF352910FF070502C0000000090000000000000000000000000000
      00000000000000000000020202000505050002010012010100A14F300DFF9258
      18FF915718FF694012FF24373FFF4B7F97FF4B7E96FF4B7E96FF4B7E96FF4B7E
      96FF4B7E96FF4B7F97FF243840FF754919FFBB8924FF786916FF1C0B4AFF3618
      88FF140C1CFF231808FF070502C0000000090000000000000000000000000000
      0000000000000000000000000000000000000000000004040154281C08F2A37D
      20FFBD9025FF9F661EFF603D16FF4C3316FF4D3416FF4D3316FF4C3316FF4C33
      16FF4C3316FF4C3316FF5F3D17FF9A601EFFC19727FF786A16FF1C0B49FF5226
      CEFF301979FF040300FF020101C0000000090000000000000000000000000000
      000000000000000000000000000000000000090702000A0802040000007E4B42
      10FCBDA528FFB78F24FFA8731FFFA6701FFFA6701FFFA97320FFAF7822FFAF78
      22FFAF7822FFAF7822FFB07A22FFBA8F25FFCFB32BFF786916FF1C0B48FF5326
      D0FF371D8BFF000000F6010000A9030201080202010000000000000000000000
      00000000000000000000000000000000000000000000100E03000C0B03110C0A
      03A42D270BF5392F17FF392D1EFF372A1EFF35281CFF483C11FFBFA428FFD0B3
      2BFFCFB22BFFCFB22BFFCFB32BFFD1B62CFFD5BA2DFF7A6B17FF1C0B48FF5326
      CFFF361C89FF000000A3030201150E0904010C08040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000804
      0F0D0603109C220E57FF3F1AA0FF3E199FFF36158DFF17101AFF695C12FF786A
      16FF786916FF786916FF786916FF776916FF7A6B17FF453D0AFF1F0D4DFF5326
      CFFF361C88FF0000009600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020B51130930F14C26C1FF592CE1FF4F24C5FF301574FF1C0B48FF1C0B
      49FF1C0B49FF1C0B48FF1C0B48FF1C0B48FF1C0B48FF200D50FF3D1A95FF5629
      D8FF361C89FF0000009600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000402
      0A0005020C040000007E221256FC562DDAFF572CDCFF4F25C6FF4D23BFFF4C23
      BFFF4E23C2FF5025C8FF5025C8FF5025C8FF5025C8FF5125CAFF5529D5FF5E30
      ECFF361C88FF0000009600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000704130005030D1106030EA8150B36F61A0D42F51A0D41F5190D40F5180D
      3EF6221155FE572DDCFF5F31F0FF5F31EFFF5F31EFFF5F31EFFF5F31F0FF6032
      F4FF371C8AFF0000009600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080414000703111505020C3C04020A3D04020A3D04020A3C0201
      054F080413E02F1877FF361C89FF361C88FF361C88FF361C88FF361C88FF371C
      8AFF1F104FFF0000009200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A051A000C07
      20020201055C0000009700000095000000950000009500000095000000950000
      0095000001910302083700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtnArchiveClick
    ExplicitTop = 615
  end
  object RadioGroup: TRadioGroup
    Left = 818
    Top = 431
    Width = 143
    Height = 105
    Caption = 'Zip'
    Items.Strings = (
      #1042#1089#1077' '#1088#1077#1079#1102#1084#1077
      #1058#1086#1083#1100#1082#1086' '#1072#1088#1093#1080#1074#1085#1099#1077
      #1041#1077#1079' '#1072#1088#1093#1080#1074#1072)
    TabOrder = 14
    OnClick = RadioGroupClick
  end
  object UniResumes: TUniQuery
    UpdatingTable = 'resumes'
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select '
      '  id ,'
      '  lang,'
      '  region_id, '
      
        '  (select count(*) from experiences e where e.resume_id = t.id) ' +
        'cntr_exp, '
      
        '  (select count(*) from skill_show_lists l, experiences e where ' +
        'l.experience_id = e.id and e.resume_id = t.id) cntr_skills, '
      '  name ,'
      '  job_opportunity ,'
      '  job_place ,'
      '  phone_numbers_text ,'
      '  resume_introduction ,'
      '  archived,'
      '  created ,'
      '  updated '
      'from resumes t'
      
        '  WHERE :p_rg = 0 OR (:p_rg = 1 AND archived = 0) OR (:p_rg = 2 ' +
        'and archived = 1)'
      'order by archived, name')
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
    object UniResumescntr_exp: TLargeintField
      FieldName = 'cntr_exp'
      ReadOnly = True
    end
    object UniResumescntr_skills: TLargeintField
      FieldName = 'cntr_skills'
      ReadOnly = True
    end
    object UniResumesname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object UniResumesjob_opportunity: TStringField
      FieldName = 'job_opportunity'
      Size = 255
    end
    object UniResumesjob_place: TStringField
      FieldName = 'job_place'
      Size = 255
    end
    object UniResumesphone_numbers_text: TStringField
      FieldName = 'phone_numbers_text'
      Size = 255
    end
    object UniResumesresume_introduction: TStringField
      FieldName = 'resume_introduction'
      Size = 1000
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
    object UniResumeslang: TStringField
      FieldName = 'lang'
      Size = 3
    end
    object UniResumesregion_id: TStringField
      FieldName = 'region_id'
      Size = 2
    end
    object UniResumesarchive: TStringField
      FieldKind = fkCalculated
      FieldName = 'archive'
      Calculated = True
    end
  end
  object UniDSResumes: TUniDataSource
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
end
