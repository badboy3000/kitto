unit ExtChart;

// Generated by ExtToPascal v.0.9.8, at 3/5/2010 11:59:34
// from "C:\Trabalho\ext\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext, ExtData;

type
  TExtChartStyle = class;
  TExtChartSeries = class;
  TExtChartSeriesStyle = class;
  TExtChartAxis = class;
  TExtChartNumericAxis = class;
  TExtChartTimeAxis = class;
  TExtChartPieSeries = class;
  TExtChartCartesianSeries = class;
  TExtChartCategoryAxis = class;
  TExtChartLineSeries = class;
  TExtChartBarSeries = class;
  TExtChartColumnSeries = class;
  TExtChartChart = class;
  TExtChartCartesianChart = class;
  TExtChartPieChart = class;
  TExtChartStackedColumnChart = class;
  TExtChartColumnChart = class;
  TExtChartBarChart = class;
  TExtChartStackedBarChart = class;
  TExtChartLineChart = class;

  TExtChartStyle = class(TExtFunction)
  private
    FPadding : Integer;
    FAnimationEnabled : Boolean;
    FFont : TExtFont;
    FDataTip : TExtDataTip;
    procedure SetFPadding(Value : Integer);
    procedure SetFAnimationEnabled(Value : Boolean);
    procedure SetFFont(Value : TExtFont);
    procedure SetFDataTip(Value : TExtDataTip);
  public
    class function JSClassName : string; override;
    property Padding : Integer read FPadding write SetFPadding;
    property AnimationEnabled : Boolean read FAnimationEnabled write SetFAnimationEnabled;
    property Font : TExtFont read FFont write SetFFont;
    property DataTip : TExtDataTip read FDataTip write SetFDataTip;
  end;

  TExtChartSeries = class(TExtFunction)
  private
    FDisplayName : String;
    FTypeJS : String;
    FStyle : TExtChartSeriesStyle;
    procedure SetDisplayName(const AValue: String);
    procedure SetTypeJS(const AValue: String);
    procedure SetStyle(const AValue: TExtChartSeriesStyle);
  public
    class function JSClassName : string; override;
    property DisplayName : String read FDisplayName write SetDisplayName;
    property TypeJS : String read FTypeJS write SetTypeJS;
    property Style : TExtChartSeriesStyle read FStyle write SetStyle;
  end;

  TExtChartSeriesStyle = class(TExtFunction)
  private
    FImage : String;
    FMode : String;
    FColor : String;
    procedure SetImage(const AValue: String);
    procedure SetMode(const AValue: String);
    procedure SetColor(const AValue: String);
  public
    class function JSClassName : string; override;
    property Image : String read FImage write SetImage;
    property Mode : String read FMode write SetMode;
    property Color : String read FColor write SetColor;
  end;

  TExtChartAxis = class(TExtFunction)
  private
    FHideOverlappingLabels : Boolean;
    FLabelFunction : String;
    FLabelSpacing : Integer;
    FOrientation : String;
    FReverse : Boolean;
    FTypeJS : String;
    FDisplayName : String;
    FTitle : String;
    procedure SetFHideOverlappingLabels(Value : Boolean);
    procedure SetLabelFunction(const AValue: String);
    procedure SetFLabelSpacing(Value : Integer);
    procedure SetFOrientation(Value : String);
    procedure SetFReverse(Value : Boolean);
    procedure SetFTypeJS(Value : String);
    procedure SetFDisplayName(Value : String);
    procedure SetTitle(const AValue: String);
  public
    class function JSClassName : string; override;
    property HideOverlappingLabels : Boolean read FHideOverlappingLabels write SetFHideOverlappingLabels;
    property LabelFunction : String read FLabelFunction write SetLabelFunction;
    property LabelSpacing : Integer read FLabelSpacing write SetFLabelSpacing;
    property Orientation : String read FOrientation write SetFOrientation;
    property Reverse : Boolean read FReverse write SetFReverse;
    property TypeJS : String read FTypeJS write SetFTypeJS;
    property DisplayName : String read FDisplayName write SetFDisplayName;
    property Title : String read FTitle write SetTitle;
  end;

  TExtChartNumericAxis = class(TExtChartAxis)
  private
    FAdjustMaximumByMajorUnit : Boolean;
    FAdjustMinimumByMajorUnit : Boolean;
    FAlwaysShowZero : Boolean;
    FCalculateByLabelSize : Boolean;
    FMajorUnit : Integer;
    FMinorUnit : Integer;
    FMaximum : Integer;
    FMinimum : Integer;
    FPosition : String;
    FRoundMajorUnit : Boolean;
    FScale : String;
    FSnapToUnits : Boolean;
    FStackingEnabled : Boolean;
    procedure SetFAdjustMaximumByMajorUnit(Value : Boolean);
    procedure SetFAdjustMinimumByMajorUnit(Value : Boolean);
    procedure SetFAlwaysShowZero(Value : Boolean);
    procedure SetFCalculateByLabelSize(Value : Boolean);
    procedure SetMajorUnit(const AValue: Integer);
    procedure SetMinorUnit(const AValue: Integer);
    procedure SetMaximum(const AValue: Integer);
    procedure SetMinimum(const AValue: Integer);
    procedure SetFPosition(Value : String);
    procedure SetFRoundMajorUnit(Value : Boolean);
    procedure SetFScale(Value : String);
    procedure SetFSnapToUnits(Value : Boolean);
    procedure SetStackingEnabled(const AValue: Boolean);
  public
    class function JSClassName : string; override;
    property AdjustMaximumByMajorUnit : Boolean read FAdjustMaximumByMajorUnit write SetFAdjustMaximumByMajorUnit;
    property AdjustMinimumByMajorUnit : Boolean read FAdjustMinimumByMajorUnit write SetFAdjustMinimumByMajorUnit;
    property AlwaysShowZero : Boolean read FAlwaysShowZero write SetFAlwaysShowZero;
    property CalculateByLabelSize : Boolean read FCalculateByLabelSize write SetFCalculateByLabelSize;
    property MajorUnit : Integer read FMajorUnit write SetMajorUnit;
    property MinorUnit : Integer read FMinorUnit write SetMinorUnit;
    property Maximum : Integer read FMaximum write SetMaximum;
    property Minimum : Integer read FMinimum write SetMinimum;
    property Position : String read FPosition write SetFPosition;
    property RoundMajorUnit : Boolean read FRoundMajorUnit write SetFRoundMajorUnit;
    property Scale : String read FScale write SetFScale;
    property SnapToUnits : Boolean read FSnapToUnits write SetFSnapToUnits;
    property StackingEnabled : Boolean read FStackingEnabled write SetStackingEnabled;
  end;

  TExtChartTimeAxis = class(TExtChartAxis)
  private
    FCalculateByLabelSize : Boolean;
    FMajorTimeUnit : String;
    FMajorUnit : Integer;
    FMinorUnit : Integer;
    FMaximum : Integer;
    FMinimum : TDateTime;
    FSnapToUnits : Boolean;
    FStackingEnabled : Boolean;
    procedure SetFCalculateByLabelSize(Value : Boolean);
    procedure SetMajorTimeUnit(const AValue: String);
    procedure SetMajorUnit(const AValue: Integer);
    procedure SetMinorUnit(const AValue: Integer);
    procedure SetMaximum(const AValue: Integer);
    procedure SetMinimum(const AValue: TDateTime);
    procedure SetFSnapToUnits(Value : Boolean);
    procedure SetStackingEnabled(const AValue: Boolean);
  public
    class function JSClassName : string; override;
    property CalculateByLabelSize : Boolean read FCalculateByLabelSize write SetFCalculateByLabelSize;
    property MajorTimeUnit : String read FMajorTimeUnit write SetMajorTimeUnit;
    property MajorUnit : Integer read FMajorUnit write SetMajorUnit;
    property MinorUnit : Integer read FMinorUnit write SetMinorUnit;
    property Maximum : Integer read FMaximum write SetMaximum;
    property Minimum : TDateTime read FMinimum write SetMinimum;
    property SnapToUnits : Boolean read FSnapToUnits write SetFSnapToUnits;
    property StackingEnabled : Boolean read FStackingEnabled write SetStackingEnabled;
  end;

  TExtChartPieSeries = class(TExtChartSeries)
  public
    class function JSClassName : string; override;
  end;

  TExtChartCartesianSeries = class(TExtChartSeries)
  private
    FAxis : String;
    FShowInLegend : Boolean;
    FXField : String;
    FYField : String;
    procedure SetFAxis(Value : String);
    procedure SetFShowInLegend(Value : Boolean);
    procedure SetXField(const AValue: String);
    procedure SetYField(const AValue: String);
  public
    class function JSClassName : string; override;
    property Axis : String read FAxis write SetFAxis;
    property ShowInLegend : Boolean read FShowInLegend write SetFShowInLegend;
    property XField : String read FXField write SetXField;
    property YField : String read FYField write SetYField;
  end;

  TExtChartCategoryAxis = class(TExtChartAxis)
  private
    FCalculateCategoryCount : Boolean;
    FCategoryNames : TExtObjectList;
    procedure SetFCalculateCategoryCount(Value : Boolean);
    procedure SetFCategoryNames(Value : TExtObjectList);
  public
    class function JSClassName : string; override;
    property CalculateCategoryCount : Boolean read FCalculateCategoryCount write SetFCalculateCategoryCount;
    property CategoryNames : TExtObjectList read FCategoryNames write SetFCategoryNames;
  end;

  TExtChartLineSeries = class(TExtChartCartesianSeries)
  public
    class function JSClassName : string; override;
  end;

  TExtChartBarSeries = class(TExtChartCartesianSeries)
  public
    class function JSClassName : string; override;
  end;

  TExtChartColumnSeries = class(TExtChartCartesianSeries)
  public
    class function JSClassName : string; override;
  end;

  // Procedural types for events TExtChartChart
  TExtChartChartOnBeforerefresh = procedure(This : TExtChartChart) of object;
  TExtChartChartOnRefresh = procedure(This : TExtChartChart) of object;

  TExtChartChart = class(TExtFlashComponent)
  private
    FChartStyle : TExtObject;
    FDisableCaching : Boolean;
    FExtraStyle : TExtObject;
    FSeriesStyles : TExtObject;
    FUrl : String;
    FStore : TExtDataStore;
    FYField : String;
    FXField : String;
    FXAxis : TExtChartAxis;
    FYAxis : TExtChartAxis;
    FTipRenderer : TExtFunction;
    FSeries : TExtObjectList;
    FOnBeforerefresh : TExtChartChartOnBeforerefresh;
    FOnRefresh : TExtChartChartOnRefresh;
    procedure SetChartStyle(const AValue: TExtObject);
    procedure SetFDisableCaching(Value : Boolean);
    procedure SetFExtraStyle(Value : TExtObject);
    procedure SetFSeriesStyles(Value : TExtObject);
    procedure SetUrl(const AValue: String);
    procedure SetStore(const AValue: TExtDataStore);
    procedure SetYField(const AValue: String);
    procedure SetXField(const AValue: String);
    procedure SetXAxis(const AValue: TExtChartAxis);
    procedure SetYAxis(const AValue: TExtChartAxis);
    procedure SetTipRenderer(const AValue: TExtFunction);
    procedure SetFSeries(Value : TExtObjectList);
    procedure SetFOnBeforerefresh(Value : TExtChartChartOnBeforerefresh);
    procedure SetFOnRefresh(Value : TExtChartChartOnRefresh);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName : string; override;
    class function CHART_URL : String;
    function BindStore(Store : TExtDataStore) : TExtFunction;
    function SetSeriesStyles(Styles : TExtObjectList) : TExtFunction;
    function SetStyle(Name : String; Value : TExtObject) : TExtFunction;
    function SetStyles(Styles : TExtObject) : TExtFunction;
    property ChartStyle : TExtObject read FChartStyle write SetChartStyle;
    property DisableCaching : Boolean read FDisableCaching write SetFDisableCaching;
    property ExtraStyle : TExtObject read FExtraStyle write SetFExtraStyle;
    property SeriesStyles : TExtObject read FSeriesStyles write SetFSeriesStyles;
    property Url : String read FUrl write SetUrl;
    property Store : TExtDataStore read FStore write SetStore;
    property YField : String read FYField write SetYField;
    property XField : String read FXField write SetXField;
    property XAxis : TExtChartAxis read FXAxis write SetXAxis;
    property YAxis : TExtChartAxis read FYAxis write SetYAxis;
    property TipRenderer : TExtFunction read FTipRenderer write SetTipRenderer;
    property Series : TExtObjectList read FSeries write SetFSeries;
    property OnBeforerefresh : TExtChartChartOnBeforerefresh read FOnBeforerefresh write SetFOnBeforerefresh;
    property OnRefresh : TExtChartChartOnRefresh read FOnRefresh write SetFOnRefresh;
  end;

  TExtChartCartesianChart = class(TExtChartChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

  TExtChartPieChart = class(TExtChartChart)
  private
    FDataField : String;
    FCategoryField : String;
    procedure SetDataField(const AValue: String);
    procedure SetCategoryField(const AValue: String);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
    property DataField : String read FDataField write SetDataField;
    property CategoryField : String read FCategoryField write SetCategoryField;
  end;

  TExtChartStackedColumnChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

  TExtChartColumnChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

  TExtChartBarChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

  TExtChartStackedBarChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

  TExtChartLineChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName : string; override;
  end;

implementation

procedure TExtChartStyle.SetFPadding(Value : Integer); begin
  FPadding := Value;
  JSCode('padding:' + VarToJSON([Value]));
end;

procedure TExtChartStyle.SetFAnimationEnabled(Value : Boolean); begin
  FAnimationEnabled := Value;
  JSCode('animationEnabled:' + VarToJSON([Value]));
end;

procedure TExtChartStyle.SetFFont(Value : TExtFont); begin
  FFont := Value;
    JSCode('font:' + VarToJSON([Value, false]));
end;

procedure TExtChartStyle.SetFDataTip(Value : TExtDataTip); begin
  FDataTip := Value;
    JSCode('dataTip:' + VarToJSON([Value, false]));
end;

class function TExtChartStyle.JSClassName : string; begin
  Result := 'Object';
end;

procedure TExtChartSeries.SetDisplayName(const AValue: String);
begin
  FDisplayName := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'displayName', [AValue]);
end;

procedure TExtChartSeries.SetTypeJS(const AValue: String);
begin
  FTypeJS := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'type', [AValue]);
end;

procedure TExtChartSeries.SetStyle(const AValue: TExtChartSeriesStyle);
begin
  FStyle.Free;
  FStyle := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'style', [AValue, False]);
end;

class function TExtChartSeries.JSClassName : string; begin
  Result := 'Ext.chart.Series';
end;

procedure TExtChartSeriesStyle.SetImage(const AValue: String);
begin
  FImage := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'image', 'setImage', [AValue]);
end;

procedure TExtChartSeriesStyle.SetMode(const AValue: String);
begin
  FMode := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'mode', [AValue]);
end;

procedure TExtChartSeriesStyle.SetColor(const AValue: String);
begin
  FColor := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'color', [AValue]);
end;

class function TExtChartSeriesStyle.JSClassName : string; begin
  Result := 'Object';
end;

procedure TExtChartAxis.SetFHideOverlappingLabels(Value : Boolean); begin
  FHideOverlappingLabels := Value;
  JSCode(JSName + '.hideOverlappingLabels=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetLabelFunction(const AValue: String);
begin
  FLabelFunction := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'labelFunction', [AValue]);
end;

procedure TExtChartAxis.SetFLabelSpacing(Value : Integer); begin
  FLabelSpacing := Value;
  JSCode(JSName + '.labelSpacing=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFOrientation(Value : String); begin
  FOrientation := Value;
  JSCode(JSName + '.orientation=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFReverse(Value : Boolean); begin
  FReverse := Value;
  JSCode(JSName + '.reverse=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFTypeJS(Value : String); begin
  FTypeJS := Value;
  JSCode(JSName + '.typeJS=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFDisplayName(Value : String); begin
  FDisplayName := Value;
  JSCode('displayName:' + VarToJSON([Value]));
end;

procedure TExtChartAxis.SetTitle(const AValue: String);
begin
  FTitle := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'title', [AValue]);
end;

class function TExtChartAxis.JSClassName : string; begin
  Result := 'Ext.chart.Axis';
end;

procedure TExtChartNumericAxis.SetFAdjustMaximumByMajorUnit(Value : Boolean); begin
  FAdjustMaximumByMajorUnit := Value;
  JSCode(JSName + '.adjustMaximumByMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFAdjustMinimumByMajorUnit(Value : Boolean); begin
  FAdjustMinimumByMajorUnit := Value;
  JSCode(JSName + '.adjustMinimumByMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFAlwaysShowZero(Value : Boolean); begin
  FAlwaysShowZero := Value;
  JSCode(JSName + '.alwaysShowZero=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFCalculateByLabelSize(Value : Boolean); begin
  FCalculateByLabelSize := Value;
  JSCode(JSName + '.calculateByLabelSize=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetMajorUnit(const AValue: Integer);
begin
  FMajorUnit := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'majorUnit', [AValue]);
end;

procedure TExtChartNumericAxis.SetMaximum(const AValue: Integer);
begin
  FMaximum := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'maximum', [AValue]);
end;

procedure TExtChartNumericAxis.SetMinimum(const AValue: Integer);
begin
  FMinimum := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'minimum', [AValue]);
end;

procedure TExtChartNumericAxis.SetMinorUnit(const AValue: Integer);
begin
  FMinorUnit := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'minorUnit', [AValue]);
end;

procedure TExtChartNumericAxis.SetFPosition(Value : String); begin
  FPosition := Value;
  JSCode(JSName + '.position=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFRoundMajorUnit(Value : Boolean); begin
  FRoundMajorUnit := Value;
  JSCode(JSName + '.roundMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFScale(Value : String); begin
  FScale := Value;
  JSCode(JSName + '.scale=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFSnapToUnits(Value : Boolean); begin
  FSnapToUnits := Value;
  JSCode(JSName + '.snapToUnits=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetStackingEnabled(const AValue: Boolean);
begin
  FStackingEnabled := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'stackingEnabled', [AValue]);
end;

class function TExtChartNumericAxis.JSClassName : string; begin
  Result := 'Ext.chart.NumericAxis';
end;

procedure TExtChartTimeAxis.SetFCalculateByLabelSize(Value : Boolean); begin
  FCalculateByLabelSize := Value;
  JSCode(JSName + '.calculateByLabelSize=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetMajorTimeUnit(const AValue: String);
begin
  FMajorTimeUnit := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'majorTimeUnit', [AValue]);
end;

procedure TExtChartTimeAxis.SetMajorUnit(const AValue: Integer);
begin
  FMajorUnit := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'majorUnit', [AValue]);
end;

procedure TExtChartTimeAxis.SetMinorUnit(const AValue: Integer);
begin
  FMinorUnit := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'minorUnit', [AValue]);
end;

procedure TExtChartTimeAxis.SetMaximum(const AValue: Integer);
begin
  FMaximum := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'maximum', [AValue]);
end;

procedure TExtChartTimeAxis.SetMinimum(const AValue: TDateTime);
begin
  FMinimum := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'minimum', [AValue]);
end;

procedure TExtChartTimeAxis.SetFSnapToUnits(Value : Boolean); begin
  FSnapToUnits := Value;
  JSCode(JSName + '.snapToUnits=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetStackingEnabled(const AValue: Boolean);
begin
  FStackingEnabled := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'stackingEnabled', [AValue]);
end;

class function TExtChartTimeAxis.JSClassName : string; begin
  Result := 'Ext.chart.TimeAxis';
end;

class function TExtChartPieSeries.JSClassName : string; begin
  Result := 'Ext.chart.PieSeries';
end;

procedure TExtChartCartesianSeries.SetFAxis(Value : String); begin
  FAxis := Value;
  JSCode('axis:' + VarToJSON([Value]));
end;

procedure TExtChartCartesianSeries.SetFShowInLegend(Value : Boolean); begin
  FShowInLegend := Value;
  JSCode(JSName + '.showInLegend=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCartesianSeries.SetXField(const AValue: String);
begin
  FXField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'xField', [AValue]);
end;

procedure TExtChartCartesianSeries.SetYField(const AValue: String);
begin
  FYField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'yField', [AValue]);
end;

class function TExtChartCartesianSeries.JSClassName : string; begin
  Result := 'Ext.chart.CartesianSeries';
end;

procedure TExtChartCategoryAxis.SetFCalculateCategoryCount(Value : Boolean); begin
  FCalculateCategoryCount := Value;
  JSCode(JSName + '.calculateCategoryCount=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCategoryAxis.SetFCategoryNames(Value : TExtObjectList); begin
  FCategoryNames := Value;
    JSCode(JSName + '.categoryNames=' + VarToJSON([Value, false]) + ';');
end;

class function TExtChartCategoryAxis.JSClassName : string; begin
  Result := 'Ext.chart.CategoryAxis';
end;

class function TExtChartLineSeries.JSClassName : string; begin
  Result := 'Ext.chart.LineSeries';
end;

class function TExtChartBarSeries.JSClassName : string; begin
  Result := 'Ext.chart.BarSeries';
end;

class function TExtChartColumnSeries.JSClassName : string; begin
  Result := 'Ext.chart.ColumnSeries';
end;

procedure TExtChartChart.SetChartStyle(const AValue: TExtObject);
begin
  FChartStyle.Free;
  FChartStyle := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'chartStyle', [AValue, False]);
end;

procedure TExtChartChart.SetFDisableCaching(Value : Boolean); begin
  FDisableCaching := Value;
  JSCode('disableCaching:' + VarToJSON([Value]));
end;

procedure TExtChartChart.SetFExtraStyle(Value : TExtObject); begin
  FExtraStyle.Free;
  FExtraStyle := Value;
    JSCode('extraStyle:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFSeriesStyles(Value : TExtObject); begin
  FSeriesStyles := Value;
    JSCode('seriesStyles:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetUrl(const AValue: String);
begin
  FUrl := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'url', [AValue]);
end;

procedure TExtChartChart.SetStore(const AValue: TExtDataStore);
begin
  FStore.Free;
  FStore := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'store', [AValue, False]);
end;

procedure TExtChartChart.SetYField(const AValue: String);
begin
  FYField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'yField', [AValue]);
end;

procedure TExtChartChart.SetXField(const AValue: String);
begin
  FXField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'xField', [AValue]);
end;

procedure TExtChartChart.SetXAxis(const AValue: TExtChartAxis);
begin
  FXAxis.Free;
  FXAxis := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'xAxis', [AValue, False]);
end;

procedure TExtChartChart.SetYAxis(const AValue: TExtChartAxis);
begin
  FYAxis.Free;
  FYAxis := AValue;
  ExtSession.ResponseItems.SetProperty(Self, 'yAxis', [AValue, False]);
end;

procedure TExtChartChart.SetTipRenderer(const AValue: TExtFunction);
begin
  FTipRenderer := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'tipRenderer', 'setTipRenderer', [AValue]);
end;

procedure TExtChartChart.SetFSeries(Value : TExtObjectList); begin
  FSeries := Value;
    JSCode('series:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFOnBeforerefresh(Value : TExtChartChartOnBeforerefresh); begin
  if Assigned(FOnBeforerefresh) then
    JSCode(JSName+'.events ["beforerefresh"].listeners=[];');
  if Assigned(Value) then
    On('beforerefresh', Ajax('beforerefresh', ['This', '%0.nm'], true));
  FOnBeforerefresh := Value;
end;

procedure TExtChartChart.SetFOnRefresh(Value : TExtChartChartOnRefresh); begin
  if Assigned(FOnRefresh) then
    JSCode(JSName+'.events ["refresh"].listeners=[];');
  if Assigned(Value) then
    On('refresh', Ajax('refresh', ['This', '%0.nm'], true));
  FOnRefresh := Value;
end;

class function TExtChartChart.JSClassName : string; begin
  Result := 'Ext.chart.Chart';
end;

class function TExtChartChart.CHART_URL : String; begin
  Result := ''
end;

procedure TExtChartChart.InitDefaults; begin
  inherited;
  FChartStyle := TExtChartStyle.CreateInternal(Self, 'chartStyle');
  FExtraStyle := TExtObject.CreateInternal(Self, 'extraStyle');
  FSeriesStyles := TExtObject.CreateInternal(Self, 'seriesStyles');
  FStore := TExtDataStore.CreateInternal(Self, 'store');
  FXAxis := TExtChartAxis.CreateInternal(Self, 'xAxis');
  FYAxis := TExtChartAxis.CreateInternal(Self, 'yAxis');
  FSeries := TExtObjectList.CreateAsAttribute(Self, 'series');
end;

function TExtChartChart.BindStore(Store : TExtDataStore) : TExtFunction; begin
  JSCode(JSName + '.bindStore(' + VarToJSON([Store, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetSeriesStyles(Styles : TExtObjectList) : TExtFunction; begin
  JSCode(JSName + '.setSeriesStyles(' + VarToJSON(Styles) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetStyle(Name : String; Value : TExtObject) : TExtFunction;
begin
  JSCode(JSName + '.setStyle(' + VarToJSON([Name, Value, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetStyles(Styles : TExtObject) : TExtFunction; begin
  JSCode(JSName + '.setStyles(' + VarToJSON([Styles, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

procedure TExtChartChart.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'beforerefresh') and Assigned(FOnBeforerefresh) then
    FOnBeforerefresh(TExtChartChart(ParamAsObject('This')))
  else if (AEvtName = 'refresh') and Assigned(FOnRefresh) then
    FOnRefresh(TExtChartChart(ParamAsObject('This')));
end;

class function TExtChartCartesianChart.JSClassName : string; begin
  Result := 'Ext.chart.CartesianChart';
end;

procedure TExtChartCartesianChart.InitDefaults; begin
  inherited;
end;

procedure TExtChartPieChart.SetDataField(const AValue: String);
begin
  FDataField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'dataField', [AValue]);
end;

procedure TExtChartPieChart.SetCategoryField(const AValue: String);
begin
  FCategoryField := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'categoryField', [AValue]);
end;

class function TExtChartPieChart.JSClassName : string; begin
  Result := 'Ext.chart.PieChart';
end;

procedure TExtChartPieChart.InitDefaults; begin
  inherited;
end;

class function TExtChartStackedColumnChart.JSClassName : string; begin
  Result := 'Ext.chart.StackedColumnChart';
end;

procedure TExtChartStackedColumnChart.InitDefaults; begin
  inherited;
end;

class function TExtChartColumnChart.JSClassName : string; begin
  Result := 'Ext.chart.ColumnChart';
end;

procedure TExtChartColumnChart.InitDefaults; begin
  inherited;
end;

class function TExtChartBarChart.JSClassName : string; begin
  Result := 'Ext.chart.BarChart';
end;

procedure TExtChartBarChart.InitDefaults; begin
  inherited;
end;

class function TExtChartStackedBarChart.JSClassName : string; begin
  Result := 'Ext.chart.StackedBarChart';
end;

procedure TExtChartStackedBarChart.InitDefaults; begin
  inherited;
end;

class function TExtChartLineChart.JSClassName : string; begin
  Result := 'Ext.chart.LineChart';
end;

procedure TExtChartLineChart.InitDefaults; begin
  inherited;
end;

end.
