object FormEmails: TFormEmails
  Left = 0
  Top = 0
  Caption = 'Emails'
  ClientHeight = 662
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  DesignSize = (
    988
    662)
  TextHeight = 15
  object Label4: TLabel
    Left = 3
    Top = 27
    Width = 23
    Height = 15
    Caption = 'Tags'
  end
  object Label6: TLabel
    Left = 5
    Top = 234
    Width = 34
    Height = 15
    Caption = 'Emails'
  end
  object EditTag: TEdit
    Left = 45
    Top = 24
    Width = 188
    Height = 23
    TabOrder = 0
  end
  object BitBtnInsertTag: TBitBtn
    Left = 239
    Top = 22
    Width = 23
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = BitBtnInsertTagClick
  end
  object BitBtnDeleteTag: TBitBtn
    Left = 276
    Top = 22
    Width = 29
    Height = 25
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
      76E4120852AD06031B4D0000000E000000030000000000000000000000000000
      000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
      C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
      03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
      D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
      5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
      BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
      A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
      CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
      BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
      EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
      CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
      E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
      D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
      E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
      D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
      E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
      DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
      EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
      DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
      D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
      D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
      A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
      79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
      BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
      050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
      EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
      000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
      EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
      000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
      B5D040437D951212223000000004000000010000000000000000}
    TabOrder = 2
    OnClick = BitBtnDeleteTagClick
  end
  object DBGridTags: TDBGrid
    Left = 45
    Top = 53
    Width = 259
    Height = 172
    DataSource = DataSourceTags
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TAG'
        Visible = True
      end>
  end
  object EditEmail: TEdit
    Left = 45
    Top = 231
    Width = 188
    Height = 23
    TabOrder = 4
  end
  object BitBtnInsertEmail: TBitBtn
    Left = 239
    Top = 231
    Width = 24
    Height = 25
    Caption = '+'
    TabOrder = 5
    OnClick = BitBtnInsertEmailClick
  end
  object BitBtnDeleteEmail: TBitBtn
    Left = 276
    Top = 229
    Width = 28
    Height = 25
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
      76E4120852AD06031B4D0000000E000000030000000000000000000000000000
      000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
      C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
      03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
      D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
      5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
      BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
      A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
      CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
      BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
      EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
      CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
      E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
      D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
      E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
      D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
      E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
      DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
      EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
      DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
      D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
      D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
      A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
      79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
      BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
      050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
      EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
      000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
      EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
      000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
      B5D040437D951212223000000004000000010000000000000000}
    TabOrder = 6
    OnClick = BitBtnDeleteEmailClick
  end
  object CheckBoxMailcheck: TCheckBox
    Left = 166
    Top = 263
    Width = 131
    Height = 17
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1074#1077#1088#1082#1091
    TabOrder = 7
  end
  object DBGridEmails: TDBGrid
    Left = 45
    Top = 286
    Width = 259
    Height = 155
    DataSource = DataSourceEmails
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'email'
        Title.Color = clSkyBlue
        Visible = True
      end>
  end
  object MemoText: TMemo
    Left = 3
    Top = 447
    Width = 472
    Height = 159
    Anchors = [akLeft, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 9
    ExplicitTop = 446
    ExplicitWidth = 468
  end
  object BitBtnClose: TBitBtn
    Left = 889
    Top = 614
    Width = 75
    Height = 40
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 10
    OnClick = BitBtnCloseClick
  end
  object BitBtnOpenMailbox: TBitBtn
    Left = 8
    Top = 614
    Width = 113
    Height = 40
    Anchors = [akLeft, akBottom]
    Caption = #1042#1110#1076#1082#1088#1080#1090#1080' Mailbox '
    TabOrder = 11
    OnClick = BitBtnOpenMailboxClick
  end
  object BitBtnKeyword: TBitBtn
    Left = 136
    Top = 614
    Width = 75
    Height = 40
    Caption = #1047#1085#1072#1081#1090#1080' tag'
    TabOrder = 12
    OnClick = BitBtnKeywordClick
  end
  object BitBtn1: TBitBtn
    Left = 230
    Top = 614
    Width = 139
    Height = 40
    Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080' '#1087#1086#1096#1090#1091
    TabOrder = 13
    OnClick = BitBtnKeywordClick
  end
  object BitBtnSend: TBitBtn
    Left = 400
    Top = 614
    Width = 75
    Height = 40
    Caption = 'BitBtnSend'
    TabOrder = 14
    OnClick = BitBtnSendClick
  end
  object DataSourceEmails: TDataSource
    Left = 356
    Top = 151
  end
  object UniInsertEmail: TUniQuery
    SQLInsert.Strings = (
      'insert into emails (receiver)'
      'values(:p_receiver)')
    Connection = FormMain.UniConnection
    Transaction = FormMain.UniTransaction
    SQL.Strings = (
      'select * from parameters')
    Left = 608
    Top = 157
  end
  object UniTableEmails: TUniTable
    TableName = 'emails'
    Connection = FormMain.UniConnection
    Left = 456
    Top = 160
    object UniTableEmailsid: TIntegerField
      FieldName = 'id'
    end
    object UniTableEmailssender: TStringField
      FieldName = 'sender'
      Size = 255
    end
    object UniTableEmailsreceiver: TStringField
      FieldName = 'receiver'
      Size = 255
    end
    object UniTableEmailsother_receivers: TStringField
      FieldName = 'other_receivers'
      Size = 255
    end
    object UniTableEmailssubject: TStringField
      FieldName = 'subject'
      Size = 255
    end
    object UniTableEmailsbody: TMemoField
      FieldName = 'body'
      BlobType = ftMemo
    end
    object UniTableEmailsimap_keyid: TStringField
      FieldName = 'imap_keyid'
      Size = 255
    end
    object UniTableEmailsattachment_size: TIntegerField
      FieldName = 'attachment_size'
    end
    object UniTableEmailsarchived: TBooleanField
      FieldName = 'archived'
    end
    object UniTableEmailsmailbox_received: TBooleanField
      FieldName = 'mailbox_received'
    end
    object UniTableEmailsdb_received: TBooleanField
      FieldName = 'db_received'
    end
    object UniTableEmailscreated: TDateTimeField
      FieldName = 'created'
    end
    object UniTableEmailsupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object UniOneEmail: TUniQuery
    Connection = FormMain.UniConnection
    SQL.Strings = (
      'select count(*) as cntr from emails'
      'where receiver = :p_receiver')
    Left = 752
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_receiver'
        Value = nil
      end>
  end
  object DataSourceTags: TDataSource
    DataSet = UniTableTags
    Left = 356
    Top = 255
  end
  object UniTableTags: TUniTable
    TableName = 'tags'
    Connection = FormMain.UniConnection
    Left = 464
    Top = 256
  end
  object UniOneTag: TUniQuery
    Connection = FormMain.UniConnection
    SQL.Strings = (
      'select count(*) as cntr from tags'
      'where tag = :tag')
    Left = 608
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tag'
        Value = nil
      end>
  end
  object UniInsertTag: TUniQuery
    SQLInsert.Strings = (
      'insert into tags (tag)'
      'values(:tag)')
    Connection = FormMain.UniConnection
    SQL.Strings = (
      'insert into tags (tag)'
      'values(:tag)')
    Left = 752
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tag'
        Value = nil
      end>
  end
end
