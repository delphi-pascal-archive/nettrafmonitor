object MainForm: TMainForm
  Left = 295
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Network Traffic Monitor'
  ClientHeight = 469
  ClientWidth = 604
  Color = clBtnFace
  ParentFont = True
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000770000000000000000000000000000840770000000000000
    0000000000000084407700000000000000000000008000844407700000000000
    00000000008000844440770000000000000000000080F8844444077000000000
    000000000087F884444440770000000000000000008744844444407770000000
    00000000008444844444407000000000000000000084F8844444400000000000
    000000000087F888444440000000000000000000008788CCC444400000000000
    000000000088CCCCCC4440000000000000000077000CCCCCCCC4400000000000
    000084077000CCCCCCCC4000000000000000844077000CCCCCCCC00000000000
    80008444077000CCCCC0000000000000800084444077000CC000000000000000
    80F8844444077000000000000000000087F88444444077000000000000000000
    8744844444407700000000000000000084448444444000000000000000000000
    84F8844444400000000070000000000087F88844444000000000077000000000
    8788CCC444400000000007770000000088CCCCCC444000000000007F70000000
    0CCCCCCCC440000000000007F000000000CCCCCCCC4000000000000000000000
    000CCCCCCCC0000000000000000000000000CCCCC00000000000000000000000
    00000CC00000000000000000000000000000000000000000000000000000FFFF
    C3FFFFFF01FFFFFC00FFFFF8007FFFF8003FFFF8001FFFF8000FFFF80007FFF8
    001FFFF8003FFFF8003FFFF8003FFFF8003FFF0C001FFC06000FF0030007E001
    8067E000C1C7E000670FE0003C3FE00030FFE000C07FE0000E3FE0003F1FE000
    FF8FE000FFC7F000FFE7F800FFFFFC00FFFFFE01FFFFFF07FFFFFF9FFFFF}
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 412
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object pc: TPageControl
      Left = 5
      Top = 5
      Width = 594
      Height = 402
      ActivePage = tsTraffic
      Align = alClient
      TabOrder = 0
      OnChange = pcChange
      object tsTraffic: TTabSheet
        Caption = 'Traffic monitor'
        object TrafficTabs: TTabSet
          Left = 0
          Top = 345
          Width = 586
          Height = 26
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          SoftTop = True
          Tabs.Strings = (
            '1'
            '2'
            '3')
          TabIndex = 0
          OnChange = TrafficTabsChange
        end
        object GroupBox: TGroupBox
          Left = 0
          Top = 0
          Width = 586
          Height = 345
          Align = alClient
          Enabled = False
          TabOrder = 1
          DesignSize = (
            586
            345)
          object ledAdapterDescription: TLabeledEdit
            Left = 10
            Top = 39
            Width = 335
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            Color = clCream
            Ctl3D = False
            EditLabel.Width = 117
            EditLabel.Height = 16
            EditLabel.Caption = 'Adapter description'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnChange = ledAdapterDescriptionChange
          end
          object ledMACAddress: TLabeledEdit
            Left = 352
            Top = 39
            Width = 127
            Height = 22
            Anchors = [akTop, akRight]
            Color = clCream
            Ctl3D = False
            EditLabel.Width = 83
            EditLabel.Height = 16
            EditLabel.Caption = 'MAC Address'
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
          object gbIN: TGroupBox
            Left = 10
            Top = 153
            Width = 562
            Height = 75
            Caption = 'IN (download)'
            Color = clBtnFace
            ParentColor = False
            TabOrder = 2
            object ledOctInSec: TLabeledEdit
              Left = 10
              Top = 39
              Width = 104
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 92
              EditLabel.Height = 16
              EditLabel.Caption = 'Traffic / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object ledAvgINSec: TLabeledEdit
              Left = 226
              Top = 39
              Width = 105
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 107
              EditLabel.Height = 16
              EditLabel.Caption = 'Average / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object ledPeakINSec: TLabeledEdit
              Left = 118
              Top = 39
              Width = 105
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 87
              EditLabel.Height = 16
              EditLabel.Caption = 'Peak / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object ledTotalIN: TLabeledEdit
              Left = 335
              Top = 39
              Width = 80
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 44
              EditLabel.Height = 16
              EditLabel.Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object gbOUT: TGroupBox
            Left = 10
            Top = 231
            Width = 562
            Height = 75
            Caption = 'OUT (upload)'
            TabOrder = 3
            object ledOctOUTSec: TLabeledEdit
              Left = 10
              Top = 39
              Width = 104
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 92
              EditLabel.Height = 16
              EditLabel.Caption = 'Traffic / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object ledAvgOUTSec: TLabeledEdit
              Left = 226
              Top = 39
              Width = 105
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 107
              EditLabel.Height = 16
              EditLabel.Caption = 'Average / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object ledPeakOUTSec: TLabeledEdit
              Left = 118
              Top = 39
              Width = 105
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 87
              EditLabel.Height = 16
              EditLabel.Caption = 'Peak / second'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object ledTotalOUT: TLabeledEdit
              Left = 335
              Top = 39
              Width = 80
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 44
              EditLabel.Height = 16
              EditLabel.Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object gbTime: TGroupBox
            Left = 10
            Top = 74
            Width = 562
            Height = 75
            Caption = 'From last reset:'
            TabOrder = 4
            object ledStartedAt: TLabeledEdit
              Left = 10
              Top = 39
              Width = 173
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 57
              EditLabel.Height = 16
              EditLabel.Caption = 'Started at'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object ledActiveFor: TLabeledEdit
              Left = 192
              Top = 39
              Width = 139
              Height = 22
              Color = clCream
              Ctl3D = False
              EditLabel.Width = 50
              EditLabel.Height = 16
              EditLabel.Caption = 'Duration'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
          object StatusText: TStaticText
            Left = 2
            Top = 323
            Width = 582
            Height = 20
            Align = alBottom
            BevelInner = bvNone
            Caption = 'StatusText'
            Color = clCream
            ParentColor = False
            TabOrder = 5
          end
          object ledSpeed: TLabeledEdit
            Left = 484
            Top = 39
            Width = 90
            Height = 22
            Anchors = [akTop, akRight]
            Color = clCream
            Ctl3D = False
            EditLabel.Width = 41
            EditLabel.Height = 16
            EditLabel.Caption = 'Speed'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
        end
      end
      object tsAbout: TTabSheet
        Caption = 'About...'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 586
          Height = 371
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clMedGray
          TabOrder = 0
          DesignSize = (
            586
            371)
          object ProductName: TLabel
            Left = 44
            Top = 30
            Width = 498
            Height = 19
            Alignment = taCenter
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 'About Delphi Programming: NETWORK TRAFFIC MONITOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            IsControl = True
          end
          object lblURL: TLabel
            Left = 224
            Top = 75
            Width = 135
            Height = 16
            Cursor = crHandPoint
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'http://delphi.about.com'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = lblURLClick
          end
          object Label3: TLabel
            Left = 66
            Top = 207
            Width = 454
            Height = 90
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            Caption = 
              'Network Traffic Monitor is a network analytic tool that examines' +
              ' local area network usage and provides a display of upload and d' +
              'ownload statistics. The main puropse of the application is monit' +
              'oring (and counting) the IP traffic between your local area netw' +
              'ork (LAN) and Internet.'
            WordWrap = True
          end
          object ProgramIcon: TImage
            Left = 228
            Top = 110
            Width = 106
            Height = 58
            Anchors = [akLeft, akTop, akRight]
            AutoSize = True
            Picture.Data = {
              07544269746D61702E190000424D2E19000000000000B6000000280000006A00
              00003A000000010008000000000078180000740C0000740C0000200000000000
              00000402040084828400C4C2C400E4E2E400F4F2F4007C7A7C00DCDEDC00FCFA
              FC000C0A0C00BCBABC00CCCACC00ECEEEC0004060400C4C6C400E4E6E400F4F6
              F4007C7E7C00FCFEFC00BCBEBC00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000041010101010101010101010101010101010
              1010101010101010101010101010101010101010101010101010101010101010
              1010101010101010101010101010101010101010101010101010101010101010
              1010101010101010101010101010101010101010101005000000040602121202
              1212021212021212021212021212021212021212021212021212021212021212
              0212120212120212120212120212120212120212120212120212120212120212
              1202121202121202121202121202121202121202121202121202121202121212
              12090500000004060D0202120212021202120212021202120212021202120212
              0212021202120212021202120212021202120212021202120212021202120212
              0212021202120212021202120212021202120212021202120212021202120212
              02120212021202120212020212121000000004060A0F07110711071107110711
              0711071107110711071107110711070707070707070707110711071107110711
              0711071107110711071107110711071107110711071107110711071107110711
              0711071107110711071107110711070707070707070707070712100000000406
              0A07111111111111111111111111111111111111111111111111111111070707
              0711111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111110707
              0707111107021000000004060A11111111111111111111111111111111111111
              111111111111111108080C0C0811111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              11111111111111111108080C0C08110707121000000004030A07111111111111
              1111111111111111111111111111111111111111111111070C08111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              111111111111111111111111111111111111111111111111070C0C0707021000
              000004060A110711111111111111111111111111111111111111111111111111
              0707070F08000711111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              110707070F080C070F120100000004060A070708080711111111111108081111
              1111070808080808071111110C080C070C0C0707080811111111110808080808
              0811070808111111080811111108081107080811111108081111110808110708
              081107080811111108081107110C080C070C0C0707121000000004060A110F0C
              0807110711111111080011111111080C070F070C08070708080F070C0C0C070F
              080011111111080C070F07000C07070C0C1111110800111111080007070C0C11
              11110800111111080007070C0C07070C0C1111110800071108080F070C0C0C0F
              07120100000004030A0F070C00070711111111070008111111110C0C0711070C
              0C07070C0C0707070C0C0F070008111111110C0C0707070C0C0F070C08111107
              000811111100080F070C08111107000811111100080F070C0C07070C08111107
              0C0C07070C0C07110700080F07121000000004060A070F0C0C0C080808070707
              0C0C071111070800110711080C070F080C0711110C08070F0C0C071111070808
              0F070F080C070F0C001111070C0C0711070C0C070F0C001111070C0C0711070C
              0C070F080C070F000C071107080C070F0C080707110C0C070F02100000000406
              0A070F080C07070F080C0707080C071107070C080711070C0C07070C0C070707
              0C0C070F080C0711070707080C080C0C0007070C080707110C08070707080C07
              070C080707110C0807070708080F0700080F070C08070707080C07070C0C0707
              070C080F07121000000004060A0F07000C0707110C08070F0C080C080C070C08
              0F0707080C11070C080F11070C080F070C080C080C1107070F04040C0807070C
              080C11070C080C11070C0807070C080C11070C080C110F080C07070C080F070C
              080C110F080C0711080C07070F0C080F0712010000000F060A0F070C0C071107
              0C0C07110800070C081107080C080C08111111110C08080C0C0811070800070C
              0811110C08080C08111107080C070C080C0711080C08111107080C07080C0807
              11080C081111110C080707080C07080C0811111107080C080C080C0707121000
              000004060A11070C080F07070C08110711111107111111071111111111111111
              1107110711111111071111071111111111111111111111071111110711111107
              1111111111071107110711111107111111110711071107110711111111111111
              11111111111111110702100000000F060A07070C080C080C0811111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111108
              081111111111111111111111111111111111111107121000000004060A111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111080C11111111111111111111111111111111111111
              1102100000000F060A0711111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111107111111111111111111
              11111111111111111111111107021000000004060A1111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111112010000000403
              0A11111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111121000000004060A11111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111107021000000004060A11111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111121000
              000004060A111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111108080711111111111111111111111111111111
              111111111111111111021000000004030A071111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              11111111111111111111111111111111111111111111111107080C0711111111
              111111111111111111111111111111111111111107021000000004060A110711
              0711111111111111111111111111111111111111071111111111111111111111
              1111111111111111071111111111111111111111111111111111071107111111
              11111111070C0C07071111111111111111111111111111110711111111111111
              0712010000000F060A0707080811071111080807070808000808080711110708
              0808080807111111080808110008110711080808111111111111080800080808
              07111111110C0808080811111108080707080C00080808071111080811111108
              08110708080711111111111111121000000004060A11070C0C070707070C0C07
              070C0C07070F080C0711080C070F070C080707080C0F070C08000711080C0711
              11111111110708000707070C0807111108080F070F080811070C0C070F0C0C07
              070F080C07070C08071111080007070C0C111111111111111102100000000F06
              0A07070C0C00080C080C0C0707080C0711070C0807070C0C0707110C0C070708
              0C070707000C07070C0C07111111111111110C0C070711070C0807070C00070F
              070F0707070C0C07070C0C0711070C0807070C0C11111100080F070C08111111
              1111111107121000000004060A1107110C0C0F040C0C0707070C0C0711070C0C
              070F080C071111080C070F0C0C0711110C080F07000807111111111111110800
              111111110C0807070C0C0C080C080C07070C080F0700080711070C0C070F0800
              1107070C0C070F0C0C071111111111111102100000000F060A07111100080F0F
              0C081111110C0C070707080C07070C0C1107070C080F070C0807111100080F07
              0C0C11111111111111070C0C11111107080C0F070C080F070F080C07070C0C0F
              070C0C0707110C080F070C0C070711080C07070C081111111111111107021000
              000004060A11111107080C080007111107080C0C110F080C071108080F07070C
              0807070C08111111080C070F0C0807071111111111110800111111070C080707
              0C080F070F080C11070C0807070C080C11070C0807070C080C110F080C07070C
              080711111111111111120100000004030A111111110C000008111111110C0C07
              080C0811110707080C080C081111110C081111110C08070008000C0811111111
              1111000807111107080C1111110C080C080C1111070C0C0F07080C07080C0807
              11070C0007080C0811110708081111111111111111121000000004060A111111
              1107080C0711111111080C070711111111111107111111111111071111111107
              111111070C0C0711111111111111080C0707070C081111110711111107111111
              11080C07110711110711111111070C080F071111111107070711111111111111
              07021000000004060A11111111110C0811111111070C08071111111111111111
              111111111111111111111111111111070C0811111111111111070C080C0C0808
              111111111111111111111111070C0807111111111111111111110C0807111111
              11111108081111111111111111121000000004060A1111111111071111111111
              11080C1111111111111111111111111111111111111111111111111111071111
              1111111111111107111111111111111111111111111111111108081111111111
              111111111111080811111111111111080C111111111111111102100000000403
              0A11111111111111111111110711111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111071111111111111111111111110711111111111111111111111111
              1111111107021000000004060A11111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              111111111111111111111111111111110712010000000F060A07071111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111111111111
              1111111111111111111111111111111111111111111111111111111107121000
              000004060A0F1111071111111111111111111111111111111111111111071107
              1107111111111111111111111111111111111111111111111107110711071107
              1111111111111111111111111111111111111111111111111111111111111111
              111107110711070707120100000004030D0D0D020D0202020202020202020202
              020202020A020202020202020202020202020202020202020202020202020202
              0202020202020202020202020202020202020202020202020202020202020202
              020202020202020202020202020202020202020202121000000004060D020202
              02020D0202020202020202020D0D0D0402020D0202020D020D020D0202020202
              0202020202020202020202020202020D020D020D020D020D0202020202020202
              0202020202020202020202020202020202020202020202020202020202020212
              0212100000000B0302020D020202020202020202020202020202020F0D020202
              020D12020202020202020D12020202020D120202020202020D12020202020202
              12020202020202020202020202020202120202020202120202020202020D1202
              020212020D1202120D12021202121000000004060D02020F0F0F040D02020F0F
              0404120D040D0D0407040F120D020402120D0B0D020B0D020B0D1202120F0F0F
              0F120D0F0F0F0F02120D120F0F0F120D120D0F0F0F0F120D120F0B0D04021202
              120F0F04120D04040F0202020B0D02020B0D020204120D021212010000000403
              0D020F0D0D0D0F020D0F0D0A0D0D0D0D04020D0F0D0D0D0F020D0B0D020D040D
              0D0F020D040202020F0D0A0D070D0D040A0D020F0D020F0D0D020F0D020F020D
              0D0F0D0D0F0D020D0B0D12020F0D0D020D0F0D0D0D040D0D040D020D040D020D
              0F0202120212100000000406020D040D0A02040D0D0F07040F040D02040D0D04
              0D0D0D040D0D040D0D0D040D02040D02120D120D02040F07040D02040D0D0D04
              0202040D0A02040202040D020D04020A04020D0202020202040D020D02040D0D
              0D040D020B0D020D04020D0D0B02120212021000000004060D020F020D0D0F0D
              020F0D0A0D0F0202040D020F0A020D0F02020F0D0D0D04020D0B0D020D120202
              02120A0D0F020D0F0D020D0F02020F02020D0F020D0B0D0202040D0D0F0D0D12
              02120D1204020D020D0F020D0D040202070D0D0D0F0D020D0F0D120202121000
              000004060D020D040F0704020D020F040F0D020D04020D040F040F0202020F07
              0404020D02041202120202120204040F020D020F07040402120D020F040F0212
              020402120D0B0D070407040212020202120F040402020F040F02120D040F040F
              0204040F0212020212120100000004030D02020202020F0D0202020202021202
              040D02020202020202020F020D0202120D12020202120D120D1202020202020F
              0D0D020202021202020202020D120D020202020D0F0D0D12020212020D120202
              0212020202020D1202020202020202021202021202121000000004060202020D
              120D0402120202120D0202020B0D02021202120D120D040D1202120D020B0212
              0202120202120D12020212040202120212020212021202120202120212020202
              040212021212021202021202120D02120212020D1202120D120D120212021202
              1212010000000406020D12020202041202021202020D120D041202120D120202
              0202041202020D1202020212021202120212020D12020204021202120D120212
              0D12020D120212020D120D12021202020D12021202120D120202120202120202
              120202120202120202120212021210000000040602120D021202120D12020212
              02120202120D02021202021202120212021202021202120D120202120D021202
              02120D120202120D0202120D021202120202021202020202120D1202120D0212
              0D02120D02120212020212020212020212020212020212021202100000000406
              0D0202120D0202120202120D120D120202120212020212020D12020212020212
              020212020D12020212021202120202021202021202120212020D120202120D12
              0212021202020D120202120D120202120212020D120D120D120202120D120D12
              0212020202121000000004060202120D02120D0202120D020202020D120D0202
              120D0202120D02020D02120D02020202120D02020D020D0202120D120D020202
              0202020202120D02120D02020D020D120D12020202120D020202120D020D0212
              0D020202020D120D020202020D02120212120100000004030D0D0D1202020212
              0D020202120D12020202120D020D1202020D12021202020D120D120202020D12
              021202120D0202020D120D120D120D120202020D020D1202120D120D02020D12
              0D02020D120D02020D120202021202120D120202020D120212020D1202021000
              00000F0E03060306060606030606060603060606060306060606030606060306
              0606060306030606060606030603060606060606030603060306030606060606
              0603060306060306060603060606060603060606060306060603060306030606
              0606030606030603060610000000040F0F0404040F0F040F040F040F040F040F
              0F040F0F040F040F0F040F040F0F0F0404040F0F040F0404040F040F0F0F040F
              04040404040404040F0F040F0404040F040F040F040F04040F040F04040F040F
              0404040F0F040F0404040F040F040F040F040404040404000000}
            IsControl = True
          end
          object StaticText1: TStaticText
            Left = 2
            Top = 347
            Width = 582
            Height = 22
            Cursor = crHandPoint
            Hint = 'Send an email to Zarko Gajic'
            Align = alBottom
            Alignment = taCenter
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = sbsSunken
            Caption = 'Developed by Zarko Gajic, delphi.guide@about.com'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = StaticText1Click
          end
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 412
    Width = 604
    Height = 57
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      604
      57)
    object ExitButton: TButton
      Left = 502
      Top = 10
      Width = 94
      Height = 38
      Anchors = [akTop, akRight]
      Caption = 'Exit'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = ExitButtonClick
    end
    object UnFreezeButton: TBitBtn
      Left = 98
      Top = 7
      Width = 80
      Height = 43
      Caption = 'Unfreeze'
      TabOrder = 1
      OnClick = UnFreezeButtonClick
    end
    object FreezeButton: TBitBtn
      Left = 10
      Top = 7
      Width = 80
      Height = 43
      Caption = 'Freeze'
      TabOrder = 2
      OnClick = FreezeButtonClick
    end
    object ClearCountersButton: TBitBtn
      Left = 187
      Top = 7
      Width = 110
      Height = 43
      Caption = 'Clear counters'
      TabOrder = 3
      OnClick = ClearCountersButtonClick
    end
    object RemoveInactiveButton: TBitBtn
      Left = 300
      Top = 7
      Width = 80
      Height = 43
      Caption = 'Remove'
      TabOrder = 4
      OnClick = RemoveInactiveButtonClick
    end
    object cbOnTop: TCheckBox
      Left = 388
      Top = 5
      Width = 106
      Height = 45
      Caption = 'Stay On Top'
      TabOrder = 5
      OnClick = cbOnTopClick
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 444
    Top = 293
  end
end
