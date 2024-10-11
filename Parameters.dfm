object FormParameters: TFormParameters
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 662
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    988
    662)
  TextHeight = 15
  object Label1: TLabel
    Left = 30
    Top = 482
    Width = 117
    Height = 15
    Caption = 'English test - filename'
  end
  object Label6: TLabel
    Left = 30
    Top = 332
    Width = 118
    Height = 15
    Caption = #1055#1072#1087#1082#1072' '#1076#1083#1103' '#1079#1073#1077#1088#1110#1075#1072#1085#1085#1103
  end
  object Label7: TLabel
    Left = 70
    Top = 542
    Width = 78
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1057#1064#1040
  end
  object Label8: TLabel
    Left = 52
    Top = 572
    Width = 97
    Height = 15
    Caption = 'Telephone Ukraine'
  end
  object Label9: TLabel
    Left = 52
    Top = 602
    Width = 98
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1061#1086#1088#1074#1072#1090#1110#1103
  end
  object Label10: TLabel
    Left = 10
    Top = 632
    Width = 139
    Height = 15
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1042#1077#1083#1080#1082#1086#1073#1088#1080#1090#1072#1085#1110#1103
  end
  object Label11: TLabel
    Left = 113
    Top = 512
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label12: TLabel
    Left = 80
    Top = 303
    Width = 58
    Height = 15
    Caption = #1055#1088#1080#1079#1074#1080#1097#1077
  end
  object Label13: TLabel
    Left = 92
    Top = 422
    Width = 42
    Height = 15
    Caption = 'Website'
  end
  object Label2: TLabel
    Left = 5
    Top = 450
    Width = 144
    Height = 15
    Caption = 'Recommendation filename'
  end
  object Label3: TLabel
    Left = 2
    Top = 362
    Width = 136
    Height = 15
    Caption = #1055#1072#1087#1082#1072' '#1085#1072' LAPTOP-PTERIK'
  end
  object EditRecommend: TEdit
    Left = 155
    Top = 450
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtnClose: TBitBtn
    Left = 896
    Top = 614
    Width = 84
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
    TabOrder = 1
    OnClick = BitBtnCloseClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 972
    Height = 286
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Width = 383
        Visible = True
      end>
  end
  object EditEnglishTest: TEdit
    Left = 155
    Top = 480
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 3
  end
  object Edit_main_folder_LAPTOP_PTERIK: TEdit
    Left = 155
    Top = 360
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 4
  end
  object Edit_main_folder_VESTA: TEdit
    Left = 155
    Top = 390
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 5
  end
  object Edit_main_folder: TEdit
    Left = 155
    Top = 330
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 6
  end
  object Edit_telephone_usa: TEdit
    Left = 155
    Top = 540
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 7
  end
  object Edit_telephone_ukrainian: TEdit
    Left = 155
    Top = 570
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 8
  end
  object Edit_telephone_croatian: TEdit
    Left = 155
    Top = 600
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 9
  end
  object Edit_Telephone_english: TEdit
    Left = 155
    Top = 630
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 10
  end
  object EditEmail: TEdit
    Left = 155
    Top = 510
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 11
  end
  object EditFullname: TEdit
    Left = 155
    Top = 300
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 12
  end
  object EditWebsite: TEdit
    Left = 155
    Top = 420
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 13
  end
  object StaticText2: TStaticText
    Left = 20
    Top = 392
    Width = 128
    Height = 19
    Caption = #1055#1072#1087#1082#1072' '#1085#1072' '#1082#1086#1084#1087#1077' VESTA'
    TabOrder = 14
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FormMain.UniQueryParameters
    Left = 824
    Top = 296
  end
end
