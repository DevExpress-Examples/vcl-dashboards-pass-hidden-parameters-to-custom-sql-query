object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 779
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 779
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 1014
    ExplicitHeight = 747
    object btnDesign: TcxButton
      Left = 12
      Top = 12
      Width = 196
      Height = 25
      Caption = 'Design Dashboard'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
      OnClick = btnDesignClick
    end
    object dxDashboardControl1: TdxDashboardControl
      Left = 12
      Top = 46
      Width = 1000
      Height = 721
      DashboardName = 'Dashboard'
      Layout.Strings = (
        '<?xml version="1.0" encoding="utf-8"?>'
        '<Dashboard RequestParameters="false">'
        '  <Title Text="Dashboard" />'
        '  <DataSources>'
        
          '    <SqlDataSource Name="SQL Data Source" ComponentName="sqlData' +
          'Source1">'
        
          '      <Connection Name="NWindConnectionString" FromAppConfig="tr' +
          'ue" />'
        '      <Query Type="SelectQuery" Name="Invoices">'
        
          '        <Parameter Name="CountryFilter" Type="DevExpress.DataAcc' +
          'ess.Expression">(System.String)(?CountryDashboardParameter )</Pa' +
          'rameter>'
        '        <Tables>'
        '          <Table Name="Invoices" />'
        '        </Tables>'
        '        <Columns>'
        '          <AllColumns Table="Invoices" />'
        '        </Columns>'
        '        <Filter>[Invoices.Country] = ?CountryFilter</Filter>'
        '      </Query>'
        '      <ConnectionOptions CloseConnection="true" />'
        '      <CalculatedFields>'
        
          '        <CalculatedField Name="Price" Expression="ToDouble( [Ext' +
          'endedPrice] ) " DataType="Auto" DataMember="Invoices" />'
        
          '        <CalculatedField Name="Calculated Field 1" Expression="T' +
          'oDouble( [Invoices.ExtendedPrice] ) " DataType="Auto" />'
        '      </CalculatedFields>'
        '    </SqlDataSource>'
        '  </DataSources>'
        '  <Parameters>'
        
          '    <Parameter Name="CountryDashboardParameter" Value="France" V' +
          'isible="false" />'
        '  </Parameters>'
        '  <Items>'
        
          '    <Chart ComponentName="chartDashboardItem1" Name="Chart 1" Sh' +
          'owCaption="false" DataSource="sqlDataSource1" DataMember="Invoic' +
          'es">'
        '      <DataItems>'
        
          '        <Dimension DataMember="OrderDate" DateTimeGroupInterval=' +
          '"MonthYear" DefaultId="DataItem1" />'
        '        <Measure DataMember="Price" DefaultId="DataItem0">'
        '          <NumericFormat FormatType="Currency" />'
        '        </Measure>'
        '      </DataItems>'
        '      <Arguments>'
        '        <Argument DefaultId="DataItem1" />'
        '      </Arguments>'
        '      <Panes>'
        '        <Pane Name="Pane 1">'
        '          <Series>'
        '            <Simple SeriesType="Spline">'
        '              <Value DefaultId="DataItem0" />'
        '              <PointLabelOptions ContentType="Value" />'
        '            </Simple>'
        '          </Series>'
        '        </Pane>'
        '      </Panes>'
        '    </Chart>'
        
          '    <Card ComponentName="cardDashboardItem1" Name="Card 1" ShowC' +
          'aption="false" DataSource="sqlDataSource1" DataMember="Invoices"' +
          '>'
        '      <DataItems>'
        
          '        <Measure DataMember="ExtendedPrice" DefaultId="DataItem0' +
          '" />'
        
          '        <Dimension DataMember="CustomerName" DefaultId="DataItem' +
          '1" />'
        '      </DataItems>'
        '      <SeriesDimensions>'
        '        <SeriesDimension DefaultId="DataItem1" />'
        '      </SeriesDimensions>'
        '      <Card>'
        '        <ActualValue DefaultId="DataItem0" />'
        '        <AbsoluteVariationNumericFormat />'
        '        <PercentVariationNumericFormat />'
        '        <PercentOfTargetNumericFormat />'
        '        <LayoutTemplate Type="Stretched">'
        
          '          <TopValue Visible="true" ValueType="ActualValue" Dimen' +
          'sionIndex="0" />'
        
          '          <MainValue Visible="true" ValueType="Title" DimensionI' +
          'ndex="0" />'
        
          '          <SubValue Visible="true" ValueType="Subtitle" Dimensio' +
          'nIndex="0" />'
        
          '          <BottomValue1 Visible="true" ValueType="PercentVariati' +
          'on" DimensionIndex="0" />'
        
          '          <BottomValue2 Visible="true" ValueType="AbsoluteVariat' +
          'ion" DimensionIndex="0" />'
        '          <DeltaIndicator Visible="true" />'
        '          <Sparkline Visible="true" />'
        '        </LayoutTemplate>'
        '      </Card>'
        '    </Card>'
        
          '    <Grid ComponentName="gridDashboardItem1" Name="Grid 1" ShowC' +
          'aption="false" DataSource="sqlDataSource1" DataMember="Invoices"' +
          '>'
        '      <DataItems>'
        '        <Dimension DataMember="Address" DefaultId="DataItem0" />'
        '        <Dimension DataMember="City" DefaultId="DataItem1" />'
        '        <Measure DataMember="Price" DefaultId="DataItem2">'
        '          <NumericFormat FormatType="Currency" />'
        '        </Measure>'
        '      </DataItems>'
        '      <GridColumns>'
        '        <GridDimensionColumn>'
        '          <Dimension DefaultId="DataItem0" />'
        '        </GridDimensionColumn>'
        '        <GridDimensionColumn>'
        '          <Dimension DefaultId="DataItem1" />'
        '        </GridDimensionColumn>'
        '        <GridMeasureColumn>'
        '          <Measure DefaultId="DataItem2" />'
        '        </GridMeasureColumn>'
        '      </GridColumns>'
        '      <GridOptions />'
        '      <ColumnFilterOptions />'
        '    </Grid>'
        '  </Items>'
        '  <LayoutTree>'
        '    <LayoutGroup>'
        '      <LayoutGroup Orientation="Vertical">'
        
          '        <LayoutItem DashboardItem="chartDashboardItem1" Weight="' +
          '124.4155844155844" />'
        '        <LayoutGroup Weight="75.5844155844156">'
        
          '          <LayoutItem DashboardItem="cardDashboardItem1" Weight=' +
          '"68.47030288908363" />'
        
          '          <LayoutItem DashboardItem="gridDashboardItem1" Weight=' +
          '"131.52969711091637" />'
        '        </LayoutGroup>'
        '      </LayoutGroup>'
        '    </LayoutGroup>'
        '  </LayoutTree>'
        '</Dashboard>')
      Parameters = <
        item
          Visible = False
          Values = <
            item
              Value = 'France'
            end>
          ReceivedName = 'CountryDashboardParameter'
          ReceivedDescription = ''
          ReceivedDataType = rptString
        end>
      State.Strings = (
        '{"Parameters":{"CountryDashboardParameter":"France"}}')
      TabOrder = 3
      DesignSize = (
        1000
        721)
    end
    object btnView: TcxButton
      Left = 215
      Top = 12
      Width = 196
      Height = 25
      Caption = 'View Dashboard'
      TabOrder = 1
      OnClick = btnViewClick
    end
    object cbCountries: TcxLookupComboBox
      Left = 500
      Top = 12
      Properties.KeyFieldNames = 'Country'
      Properties.ListColumns = <
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = dsNWind
      Properties.OnEditValueChanged = cbCountriesPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 512
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object liBtnShowDesigner: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'btnShowDesigner'
      CaptionOptions.Visible = False
      Control = btnDesign
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDashboardControl: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      Control = dxDashboardControl1
      ControlOptions.OriginalHeight = 449
      ControlOptions.OriginalWidth = 733
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgButtons: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liBtnDelete: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnView
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licbCountries: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahClient
      CaptionOptions.Text = 'Select Country'
      Control = cbCountries
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dxBackendDataConnectionManager1: TdxBackendDataConnectionManager
    Left = 160
    Top = 408
    object NWindConnectionString: TdxBackendDatabaseSQLConnection
      ConnectionString = 'XpoProvider=SQLite;Data Source=|DataDirectory|..\..\..\nwind.db'
    end
  end
  object dsNWind: TDataSource
    DataSet = FDNWind
    Left = 208
    Top = 480
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'WXI'
    Left = 96
    Top = 408
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=..\..\..\nwind.db'
      'DriverID=SQLite')
    Left = 152
    Top = 480
  end
  object FDNWind: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT [Country] FROM [Customers] ORDER BY [Country];')
    Left = 96
    Top = 480
  end
end
