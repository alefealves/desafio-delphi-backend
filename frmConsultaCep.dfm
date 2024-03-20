object formConsultaCep: TformConsultaCep
  Left = 0
  Top = 0
  Caption = 'Consulta CEP'
  ClientHeight = 1612
  ClientWidth = 2006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 32
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 2006
    Height = 1612
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 2004
      Height = 100
      Align = alTop
      TabOrder = 0
      ExplicitLeft = -15
      ExplicitTop = 9
      object Label1: TLabel
        Left = 48
        Top = 6
        Width = 157
        Height = 32
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Informe o CEP:'
      end
      object btnConsultar: TButton
        Left = 248
        Top = 26
        Width = 150
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = btnConsultarClick
      end
      object edCEP: TMaskEdit
        Left = 48
        Top = 48
        Width = 156
        Height = 40
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        EditMask = '00000\-999;1;_'
        MaxLength = 9
        TabOrder = 1
        Text = '     -   '
      end
    end
  end
end
