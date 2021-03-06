unit ExtList;

// Generated by ExtToPascal v.0.9.8, at 3/5/2010 11:59:34
// from "C:\Trabalho\ext\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, ExtUtil, Ext;

type
  TExtListColumn = class;
  TExtListNumberColumn = class;
  TExtListSorter = class;
  TExtListDateColumn = class;
  TExtListBooleanColumn = class;
  TExtListColumnResizer = class;
  TExtListListView = class;

  TExtListColumn = class(TExtFunction)
  private
    FAlign : String;
    FCls : String;
    FDataIndex : String;
    FHeader : String;
    FTpl : String;
    FWidth : Integer;
    procedure SetFAlign(Value : String);
    procedure SetFCls(Value : String);
    procedure SetFDataIndex(Value : String);
    procedure SetFHeader(Value : String);
    procedure SetFTpl(Value : String);
    procedure SetFWidth(Value : Integer);
  public
    function JSClassName : string; override;
    property Align : String read FAlign write SetFAlign;
    property Cls : String read FCls write SetFCls;
    property DataIndex : String read FDataIndex write SetFDataIndex;
    property Header : String read FHeader write SetFHeader;
    property Tpl : String read FTpl write SetFTpl;
    property Width : Integer read FWidth write SetFWidth;
  end;

  TExtListNumberColumn = class(TExtListColumn)
  private
    FFormat : String; // '0,000.00'
    procedure SetFFormat(Value : String);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    property Format : String read FFormat write SetFFormat;
  end;

  TExtListSorter = class(TExtUtilObservable)
  private
    FSortClasses : TExtObjectList;
    procedure SetFSortClasses(Value : TExtObjectList);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    property SortClasses : TExtObjectList read FSortClasses write SetFSortClasses;
  end;

  TExtListDateColumn = class(TExtListColumn)
  public
    function JSClassName : string; override;
  end;

  TExtListBooleanColumn = class(TExtListColumn)
  private
    FFalseText : String; // 'false'
    FTrueText : String; // 'true'
    FUndefinedText : String;
    procedure SetFFalseText(Value : String);
    procedure SetFTrueText(Value : String);
    procedure SetFUndefinedText(Value : String);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    property FalseText : String read FFalseText write SetFFalseText;
    property TrueText : String read FTrueText write SetFTrueText;
    property UndefinedText : String read FUndefinedText write SetFUndefinedText;
  end;

  TExtListColumnResizer = class(TExtUtilObservable)
  private
    FMinPct : Integer; // 05
    procedure SetFMinPct(Value : Integer);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    property MinPct : Integer read FMinPct write SetFMinPct;
  end;

  TExtListListView = class(TExtDataView)
  private
    FColumnResize : Boolean; // true
    FColumnResizeObject : TExtObject;
    FColumnSort : Boolean; // true
    FColumnSortObject : TExtObject;
    FColumns : TExtObjectList;
    FHideHeaders : Boolean;
    FInternalTpl : String;
    FInternalTplArray : TExtObjectList;
    FItemSelector : String;
    FOverClass : String; // 'x-list-over'
    FReserveScrollOffset : Boolean;
    FScrollOffset : Integer;
    FSelectedClass : String; // 'x-list-selected'
    FDisableHeaders : Boolean;
    procedure SetFColumnResize(Value : Boolean);
    procedure SetFColumnResizeObject(Value : TExtObject);
    procedure SetFColumnSort(Value : Boolean);
    procedure SetFColumnSortObject(Value : TExtObject);
    procedure SetFColumns(Value : TExtObjectList);
    procedure SetFHideHeaders(Value : Boolean);
    procedure SetFInternalTpl(Value : String);
    procedure SetFInternalTplArray(Value : TExtObjectList);
    procedure SetFItemSelector(Value : String);
    procedure SetFOverClass(Value : String);
    procedure SetFReserveScrollOffset(Value : Boolean);
    procedure SetFScrollOffset(Value : Integer);
    procedure SetFSelectedClass(Value : String);
    procedure SetFDisableHeaders(Value : Boolean);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    function CollectData(Records : TExtObjectList; StartIndex : Integer) : TExtFunction;
    property ColumnResize : Boolean read FColumnResize write SetFColumnResize;
    property ColumnResizeObject : TExtObject read FColumnResizeObject write SetFColumnResizeObject;
    property ColumnSort : Boolean read FColumnSort write SetFColumnSort;
    property ColumnSortObject : TExtObject read FColumnSortObject write SetFColumnSortObject;
    property Columns : TExtObjectList read FColumns write SetFColumns;
    property HideHeaders : Boolean read FHideHeaders write SetFHideHeaders;
    property InternalTpl : String read FInternalTpl write SetFInternalTpl;
    property InternalTplArray : TExtObjectList read FInternalTplArray write SetFInternalTplArray;
    property ItemSelector : String read FItemSelector write SetFItemSelector;
    property OverClass : String read FOverClass write SetFOverClass;
    property ReserveScrollOffset : Boolean read FReserveScrollOffset write SetFReserveScrollOffset;
    property ScrollOffset : Integer read FScrollOffset write SetFScrollOffset;
    property SelectedClass : String read FSelectedClass write SetFSelectedClass;
    property DisableHeaders : Boolean read FDisableHeaders write SetFDisableHeaders;
  end;

implementation

procedure TExtListColumn.SetFAlign(Value : String); begin
  FAlign := Value;
  JSCode('align:' + VarToJSON([Value]));
end;

procedure TExtListColumn.SetFCls(Value : String); begin
  FCls := Value;
  JSCode('cls:' + VarToJSON([Value]));
end;

procedure TExtListColumn.SetFDataIndex(Value : String); begin
  FDataIndex := Value;
  JSCode('dataIndex:' + VarToJSON([Value]));
end;

procedure TExtListColumn.SetFHeader(Value : String); begin
  FHeader := Value;
  JSCode('header:' + VarToJSON([Value]));
end;

procedure TExtListColumn.SetFTpl(Value : String); begin
  FTpl := Value;
  JSCode('tpl:' + VarToJSON([Value]));
end;

procedure TExtListColumn.SetFWidth(Value : Integer); begin
  FWidth := Value;
  JSCode('width:' + VarToJSON([Value]));
end;

function TExtListColumn.JSClassName : string; begin
  Result := 'Ext.list.Column';
end;

procedure TExtListNumberColumn.SetFFormat(Value : String); begin
  FFormat := Value;
  JSCode('format:' + VarToJSON([Value]));
end;

function TExtListNumberColumn.JSClassName : string; begin
  Result := 'Ext.list.NumberColumn';
end;

procedure TExtListNumberColumn.InitDefaults; begin
  inherited;
  FFormat := '0,000.00';
end;

procedure TExtListSorter.SetFSortClasses(Value : TExtObjectList); begin
  FSortClasses := Value;
    JSCode('sortClasses:' + VarToJSON([Value, false]));
end;

function TExtListSorter.JSClassName : string; begin
  Result := 'Ext.list.Sorter';
end;

procedure TExtListSorter.InitDefaults; begin
  inherited;
  FSortClasses := TExtObjectList.CreateAsAttribute(Self, 'sortClasses');
end;

function TExtListDateColumn.JSClassName : string; begin
  Result := 'Ext.list.DateColumn';
end;

procedure TExtListBooleanColumn.SetFFalseText(Value : String); begin
  FFalseText := Value;
  JSCode('falseText:' + VarToJSON([Value]));
end;

procedure TExtListBooleanColumn.SetFTrueText(Value : String); begin
  FTrueText := Value;
  JSCode('trueText:' + VarToJSON([Value]));
end;

procedure TExtListBooleanColumn.SetFUndefinedText(Value : String); begin
  FUndefinedText := Value;
  JSCode('undefinedText:' + VarToJSON([Value]));
end;

function TExtListBooleanColumn.JSClassName : string; begin
  Result := 'Ext.list.BooleanColumn';
end;

procedure TExtListBooleanColumn.InitDefaults; begin
  inherited;
  FFalseText := 'false';
  FTrueText := 'true';
end;

procedure TExtListColumnResizer.SetFMinPct(Value : Integer); begin
  FMinPct := Value;
  JSCode('minPct:' + VarToJSON([Value]));
end;

function TExtListColumnResizer.JSClassName : string; begin
  Result := 'Ext.list.ColumnResizer';
end;

procedure TExtListColumnResizer.InitDefaults; begin
  inherited;
  FMinPct := 05;
end;

procedure TExtListListView.SetFColumnResize(Value : Boolean); begin
  FColumnResize := Value;
  JSCode('columnResize:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFColumnResizeObject(Value : TExtObject); begin
  FColumnResizeObject := Value;
    JSCode('columnResize:' + VarToJSON([Value, false]));
end;

procedure TExtListListView.SetFColumnSort(Value : Boolean); begin
  FColumnSort := Value;
  JSCode('columnSort:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFColumnSortObject(Value : TExtObject); begin
  FColumnSortObject := Value;
    JSCode('columnSort:' + VarToJSON([Value, false]));
end;

procedure TExtListListView.SetFColumns(Value : TExtObjectList); begin
  FColumns := Value;
    JSCode('columns:' + VarToJSON([Value, false]));
end;

procedure TExtListListView.SetFHideHeaders(Value : Boolean); begin
  FHideHeaders := Value;
  JSCode('hideHeaders:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFInternalTpl(Value : String); begin
  FInternalTpl := Value;
  JSCode('internalTpl:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFInternalTplArray(Value : TExtObjectList); begin
  FInternalTplArray := Value;
    JSCode('internalTpl:' + VarToJSON([Value, false]));
end;

procedure TExtListListView.SetFItemSelector(Value : String); begin
  FItemSelector := Value;
  JSCode('itemSelector:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFOverClass(Value : String); begin
  FOverClass := Value;
  JSCode('overClass:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFReserveScrollOffset(Value : Boolean); begin
  FReserveScrollOffset := Value;
  JSCode('reserveScrollOffset:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFScrollOffset(Value : Integer); begin
  FScrollOffset := Value;
  JSCode('scrollOffset:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFSelectedClass(Value : String); begin
  FSelectedClass := Value;
  JSCode('selectedClass:' + VarToJSON([Value]));
end;

procedure TExtListListView.SetFDisableHeaders(Value : Boolean); begin
  FDisableHeaders := Value;
  JSCode(JSName + '.disableHeaders=' + VarToJSON([Value]) + ';');
end;

function TExtListListView.JSClassName : string; begin
  Result := 'Ext.list.ListView';
end;

procedure TExtListListView.InitDefaults; begin
  inherited;
  FColumnResize := true;
  FColumnResizeObject := TExtObject.CreateInternal(Self, 'columnResize');
  FColumnSort := true;
  FColumnSortObject := TExtObject.CreateInternal(Self, 'columnSort');
  FColumns := TExtObjectList.CreateAsAttribute(Self, 'columns');
  FInternalTplArray := TExtObjectList.CreateAsAttribute(Self, 'internalTpl');
  FOverClass := 'x-list-over';
  FSelectedClass := 'x-list-selected';
end;

function TExtListListView.CollectData(Records : TExtObjectList; StartIndex : Integer) : TExtFunction; begin
  JSCode(JSName + '.collectData(' + VarToJSON(Records) + ',' + VarToJSON([StartIndex]) + ');', 'TExtListListView');
  Result := Self;
end;

end.
