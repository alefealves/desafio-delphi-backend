object formConsultaCep: TformConsultaCep
  Left = 0
  Top = 0
  Caption = 'Consulta CEP'
  ClientHeight = 441
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 32
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 441
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 114
      Top = 157
      Width = 45
      Height = 32
      Caption = 'CEP:'
    end
    object Label3: TLabel
      Left = 34
      Top = 221
      Width = 128
      Height = 32
      Caption = 'Logradouro:'
    end
    object Label6: TLabel
      Left = 129
      Top = 397
      Width = 33
      Height = 32
      Caption = 'UF:'
    end
    object Label4: TLabel
      Left = 94
      Top = 280
      Width = 67
      Height = 32
      Caption = 'Bairro:'
    end
    object Label5: TLabel
      Left = 82
      Top = 341
      Width = 79
      Height = 32
      Caption = 'Cidade:'
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 889
      Height = 100
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 34
        Width = 157
        Height = 32
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Informe o CEP:'
      end
      object btnConsultar: TButton
        Left = 376
        Top = 26
        Width = 150
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Consultar'
        TabOrder = 1
        OnClick = btnConsultarClick
      end
      object edCEP: TMaskEdit
        Left = 186
        Top = 31
        Width = 154
        Height = 40
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        EditMask = '00.000\-999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .   -   '
        OnChange = edCEPChange
      end
    end
    object edtLogradouro: TEdit
      Left = 168
      Top = 218
      Width = 400
      Height = 40
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtUF: TEdit
      Left = 168
      Top = 394
      Width = 60
      Height = 40
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object edtBairro: TEdit
    Left = 167
    Top = 277
    Width = 200
    Height = 40
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtCidade: TEdit
    Left = 167
    Top = 338
    Width = 200
    Height = 40
    TabStop = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtCEP: TEdit
    Left = 165
    Top = 157
    Width = 130
    Height = 40
    TabStop = False
    ReadOnly = True
    TabOrder = 3
  end
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 840
    Top = 312
  end
end
