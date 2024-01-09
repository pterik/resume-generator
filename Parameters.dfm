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
    Top = 465
    Width = 117
    Height = 15
    Caption = 'English test - filename'
  end
  object Label6: TLabel
    Left = 80
    Top = 320
    Width = 61
    Height = 15
    Caption = 'Main folder'
  end
  object Label7: TLabel
    Left = 70
    Top = 532
    Width = 79
    Height = 15
    Caption = 'Telephone USA'
  end
  object Label8: TLabel
    Left = 52
    Top = 563
    Width = 97
    Height = 15
    Caption = 'Telephone Ukraine'
  end
  object Label9: TLabel
    Left = 52
    Top = 593
    Width = 95
    Height = 15
    Caption = 'Telephone Croatia'
  end
  object Label10: TLabel
    Left = 47
    Top = 626
    Width = 100
    Height = 15
    Caption = 'Telephone England'
  end
  object Label11: TLabel
    Left = 113
    Top = 495
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label12: TLabel
    Left = 97
    Top = 290
    Width = 52
    Height = 15
    Caption = 'Full name'
  end
  object Label13: TLabel
    Left = 92
    Top = 409
    Width = 42
    Height = 15
    Caption = 'Website'
  end
  object Label2: TLabel
    Left = 5
    Top = 438
    Width = 144
    Height = 15
    Caption = 'Recommendation filename'
  end
  object Label3: TLabel
    Left = 2
    Top = 352
    Width = 147
    Height = 15
    Caption = 'Main folder LAPTOP-PTERIK'
  end
  object EditRecommend: TEdit
    Left = 155
    Top = 435
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtnClose: TBitBtn
    Left = 905
    Top = 615
    Width = 75
    Height = 40
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnCloseClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 972
    Height = 273
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
    Top = 464
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 3
  end
  object Edit_main_folder_LAPTOP_PTERIK: TEdit
    Left = 155
    Top = 347
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 4
  end
  object Edit_main_folder_VESTA: TEdit
    Left = 155
    Top = 377
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 5
  end
  object Edit_main_folder: TEdit
    Left = 155
    Top = 317
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 6
  end
  object Edit_telephone_usa: TEdit
    Left = 155
    Top = 529
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 7
  end
  object Edit_telephone_ukrainian: TEdit
    Left = 155
    Top = 559
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 8
  end
  object Edit_telephone_croatian: TEdit
    Left = 155
    Top = 589
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 9
  end
  object Edit_Telephone_english: TEdit
    Left = 155
    Top = 619
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 10
  end
  object EditEmail: TEdit
    Left = 155
    Top = 493
    Width = 244
    Height = 23
    ReadOnly = True
    TabOrder = 11
  end
  object EditFullname: TEdit
    Left = 155
    Top = 287
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 12
  end
  object EditWebsite: TEdit
    Left = 155
    Top = 406
    Width = 473
    Height = 23
    ReadOnly = True
    TabOrder = 13
  end
  object StaticText2: TStaticText
    Left = 41
    Top = 379
    Width = 101
    Height = 19
    Caption = 'Main folder VESTA'
    TabOrder = 14
  end
  object UniQueryParameters: TUniQuery
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select * from parameters')
    Active = True
    Left = 736
    Top = 301
  end
  object DataSource1: TDataSource
    DataSet = UniQueryParameters
    Left = 824
    Top = 296
  end
end
