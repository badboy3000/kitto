unit ExtMenu;

// Generated by ExtToPascal v.0.9.8, at 3/5/2010 11:59:34
// from "C:\Trabalho\ext\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext;

type
  TExtMenuMenuMgrSingleton = class;
  TExtMenuBaseItem = class;
  TExtMenuSeparator = class;
  TExtMenuTextItem = class;
  TExtMenuItem = class;
  TExtMenuCheckItem = class;
  TExtMenuMenu = class;
  TExtMenuColorMenu = class;
  TExtMenuDateMenu = class;

  TExtMenuMenuMgrSingleton = class(TExtFunction)
  public
    class function JSClassName: string; override;
    function Get(Menu: string): TExtFunction; overload;
    function Get(Menu: TExtObject): TExtFunction; overload;
    function HideAll: TExtFunction;
  end;

  // Procedural types for events TExtMenuBaseItem
  TExtMenuBaseItemOnActivate = procedure(This: TExtMenuBaseItem) of object;
  TExtMenuBaseItemOnClick = procedure(This: TExtMenuBaseItem; E: TExtEventObjectSingleton)
    of object;
  TExtMenuBaseItemOnDeactivate = procedure(This: TExtMenuBaseItem) of object;

  TExtMenuBaseItem = class(TExtComponent)
  private
    FActiveClass: string; // 'x-menu-item-active'
    FCanActivate: Boolean;
    FClickHideDelay: Integer; // 1
    FHandler: TExtFunction;
    FHideOnClick: Boolean; // true
    FScope: TExtObject;
    FParentMenu: TExtMenuMenu;
    FOnActivate: TExtMenuBaseItemOnActivate;
    FOnClick: TExtMenuBaseItemOnClick;
    FOnDeactivate: TExtMenuBaseItemOnDeactivate;
    procedure SetFActiveClass(Value: string);
    procedure SetFCanActivate(Value: Boolean);
    procedure SetFClickHideDelay(Value: Integer);
    procedure _SetHandler(const AValue: TExtFunction);
    procedure SetFHideOnClick(Value: Boolean);
    procedure SetFScope(Value: TExtObject);
    procedure SetFParentMenu(Value: TExtMenuMenu);
    procedure SetFOnActivate(Value: TExtMenuBaseItemOnActivate);
    procedure SetFOnClick(Value: TExtMenuBaseItemOnClick);
    procedure SetFOnDeactivate(Value: TExtMenuBaseItemOnDeactivate);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    function SetHandler(const AHandler: TExtFunction; const AScope: TExtObject): TExtFunction;
    property ActiveClass: string read FActiveClass write SetFActiveClass;
    property CanActivate: Boolean read FCanActivate write SetFCanActivate;
    property ClickHideDelay: Integer read FClickHideDelay write SetFClickHideDelay;
    property Handler: TExtFunction read FHandler write _SetHandler;
    property HideOnClick: Boolean read FHideOnClick write SetFHideOnClick;
    property Scope: TExtObject read FScope write SetFScope;
    property ParentMenu: TExtMenuMenu read FParentMenu write SetFParentMenu;
    property OnActivate: TExtMenuBaseItemOnActivate read FOnActivate write SetFOnActivate;
    property OnClick: TExtMenuBaseItemOnClick read FOnClick write SetFOnClick;
    property OnDeactivate: TExtMenuBaseItemOnDeactivate read FOnDeactivate
      write SetFOnDeactivate;
  end;

  TExtMenuSeparator = class(TExtMenuBaseItem)
  private
    FHideOnClick: Boolean;
    FItemCls: string; // 'x-menu-sep'
    procedure SetFHideOnClick(Value: Boolean);
    procedure SetFItemCls(Value: string);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    property HideOnClick: Boolean read FHideOnClick write SetFHideOnClick;
    property ItemCls: string read FItemCls write SetFItemCls;
  end;

  TExtMenuTextItem = class(TExtMenuBaseItem)
  private
    FHideOnClick: Boolean;
    FItemCls: string; // 'x-menu-text'
    FText: string;
    procedure SetFHideOnClick(Value: Boolean);
    procedure SetFItemCls(Value: string);
    procedure SetFText(Value: string);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    property HideOnClick: Boolean read FHideOnClick write SetFHideOnClick;
    property ItemCls: string read FItemCls write SetFItemCls;
    property Text: string read FText write SetFText;
  end;

  TExtMenuItem = class(TExtMenuBaseItem)
  private
    FCanActivate: Boolean; // true
    FHref: string; // '#'
    FHrefTarget: string;
    FIcon: string;
    FIconCls: string;
    FItemCls: string; // 'x-menu-item'
    FMenu: TExtMenuMenu;
    FShowDelay: Integer; // 200
    FText: string;
    FMenu_: TExtMenuMenu;
    procedure SetFCanActivate(Value: Boolean);
    procedure SetFHref(Value: string);
    procedure SetFHrefTarget(Value: string);
    procedure SetFIcon(Value: string);
    procedure SetIconCls(const AValue: string);
    procedure SetFItemCls(Value: string);
    procedure SetMenu(AValue: TExtMenuMenu);
    procedure SetFShowDelay(Value: Integer);
    procedure SetText(const AValue: string);
    procedure SetFMenu_(Value: TExtMenuMenu);
  protected
    procedure InitDefaults; override;
  public
    class function JSClassName: string; override;
    function SetIconClass(Cls: string): TExtFunction;
    property CanActivate: Boolean read FCanActivate write SetFCanActivate;
    property Href: string read FHref write SetFHref;
    property HrefTarget: string read FHrefTarget write SetFHrefTarget;
    property Icon: string read FIcon write SetFIcon;
    property IconCls: string read FIconCls write SetIconCls;
    property ItemCls: string read FItemCls write SetFItemCls;
    property Menu: TExtMenuMenu read FMenu write SetMenu;
    property ShowDelay: Integer read FShowDelay write SetFShowDelay;
    property Text: string read FText write SetText;
    property Menu_: TExtMenuMenu read FMenu_ write SetFMenu_;
  end;

  // Procedural types for events TExtMenuCheckItem
  TExtMenuCheckItemOnBeforecheckchange = procedure(This: TExtMenuCheckItem;
    Checked: Boolean) of object;
  TExtMenuCheckItemOnCheckchange = procedure(This: TExtMenuCheckItem; Checked: Boolean)
    of object;

  TExtMenuCheckItem = class(TExtMenuItem)
  private
    FChecked: Boolean;
    FGroup: string;
    FGroupClass: string; // 'x-menu-group-item'
    FItemCls: string; // 'x-menu-item x-menu-check-item'
    FOnBeforecheckchange: TExtMenuCheckItemOnBeforecheckchange;
    FOnCheckchange: TExtMenuCheckItemOnCheckchange;
    procedure _SetChecked(const AValue: Boolean);
    procedure SetFGroup(Value: string);
    procedure SetFGroupClass(Value: string);
    procedure SetFItemCls(Value: string);
    procedure SetFOnBeforecheckchange(Value: TExtMenuCheckItemOnBeforecheckchange);
    procedure SetFOnCheckchange(Value: TExtMenuCheckItemOnCheckchange);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    function CheckHandler(This: TExtMenuCheckItem; Checked: Boolean): TExtFunction;
    function SetChecked(const AChecked: Boolean; const ASuppressEvent: Boolean = False): TExtFunction;
    property Checked: Boolean read FChecked write _SetChecked;
    property Group: string read FGroup write SetFGroup;
    property GroupClass: string read FGroupClass write SetFGroupClass;
    property ItemCls: string read FItemCls write SetFItemCls;
    property OnBeforecheckchange: TExtMenuCheckItemOnBeforecheckchange
      read FOnBeforecheckchange write SetFOnBeforecheckchange;
    property OnCheckchange: TExtMenuCheckItemOnCheckchange read FOnCheckchange
      write SetFOnCheckchange;
  end;

  // Procedural types for events TExtMenuMenu
  TExtMenuMenuOnClick = procedure(This: TExtMenuMenu; MenuItem: TExtMenuItem;
    E: TExtEventObjectSingleton) of object;
  TExtMenuMenuOnItemclick = procedure(BaseItem: TExtMenuBaseItem;
    E: TExtEventObjectSingleton) of object;
  TExtMenuMenuOnMouseout = procedure(This: TExtMenuMenu; E: TExtEventObjectSingleton;
    MenuItem: TExtMenuItem) of object;
  TExtMenuMenuOnMouseover = procedure(This: TExtMenuMenu; E: TExtEventObjectSingleton;
    MenuItem: TExtMenuItem) of object;

  TExtMenuMenu = class(TExtContainer)
  private
    FAllowOtherMenus: Boolean;
    FDefaultAlign: string; // 'tl-bl?'
    FDefaultOffsets: TExtObjectList;
    FDefaults: TExtObject;
    FEnableScrolling: Boolean; // true
    FFloating: Boolean;
    FIgnoreParentClicks: Boolean;
    FItems: TExtObjectList;
    FLayout: string;
    FLayoutObject: TExtObject;
    FMaxHeight: Integer;
    FMinWidth: Integer; // 120
    FPlain: Boolean;
    FScrollIncrement: Integer; // 24
    FShadow: Boolean;
    FShadowString: string;
    FShowSeparator: Boolean; // true
    FSubMenuAlign: string; // 'tl-tr?'
    FZIndex: Integer;
    FOnClick: TExtMenuMenuOnClick;
    FOnItemclick: TExtMenuMenuOnItemclick;
    FOnMouseout: TExtMenuMenuOnMouseout;
    FOnMouseover: TExtMenuMenuOnMouseover;
    procedure SetFAllowOtherMenus(Value: Boolean);
    procedure SetFDefaultAlign(Value: string);
    procedure SetFDefaultOffsets(Value: TExtObjectList);
    procedure SetFDefaults(Value: TExtObject);
    procedure SetFEnableScrolling(Value: Boolean);
    procedure SetFFloating(Value: Boolean);
    procedure SetFIgnoreParentClicks(Value: Boolean);
    procedure SetFItems(Value: TExtObjectList);
    procedure SetFLayout(Value: string);
    procedure SetFLayoutObject(Value: TExtObject);
    procedure SetFMaxHeight(Value: Integer);
    procedure SetFMinWidth(Value: Integer);
    procedure SetFPlain(Value: Boolean);
    procedure SetFScrollIncrement(Value: Integer);
    procedure SetFShadow(Value: Boolean);
    procedure SetFShadowString(Value: string);
    procedure SetFShowSeparator(Value: Boolean);
    procedure SetFSubMenuAlign(Value: string);
    procedure SetFZIndex(Value: Integer);
    procedure SetFOnClick(Value: TExtMenuMenuOnClick);
    procedure SetFOnItemclick(Value: TExtMenuMenuOnItemclick);
    procedure SetFOnMouseout(Value: TExtMenuMenuOnMouseout);
    procedure SetFOnMouseover(Value: TExtMenuMenuOnMouseover);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    function AddElement(El: string): TExtFunction;
    function AddItem(Item: TExtMenuItem): TExtFunction;
    function AddMenuItem(Config: TExtObject = nil): TExtFunction;
    function AddSeparator: TExtFunction;
    function AddText(Text: string): TExtFunction;
    function Hide(Deep: Boolean = false): TExtFunction;
    function Show(Element: string; Position: string = ''; ParentMenu: TExtMenuMenu = nil)
      : TExtFunction;
    function ShowAt(XyPosition: TExtObjectList; ParentMenu: TExtMenuMenu = nil)
      : TExtFunction;
    property AllowOtherMenus: Boolean read FAllowOtherMenus write SetFAllowOtherMenus;
    property DefaultAlign: string read FDefaultAlign write SetFDefaultAlign;
    property DefaultOffsets: TExtObjectList read FDefaultOffsets write SetFDefaultOffsets;
    property Defaults: TExtObject read FDefaults write SetFDefaults;
    property EnableScrolling: Boolean read FEnableScrolling write SetFEnableScrolling;
    property Floating: Boolean read FFloating write SetFFloating;
    property IgnoreParentClicks: Boolean read FIgnoreParentClicks
      write SetFIgnoreParentClicks;
    property Items: TExtObjectList read FItems write SetFItems;
    property Layout: string read FLayout write SetFLayout;
    property LayoutObject: TExtObject read FLayoutObject write SetFLayoutObject;
    property MaxHeight: Integer read FMaxHeight write SetFMaxHeight;
    property MinWidth: Integer read FMinWidth write SetFMinWidth;
    property Plain: Boolean read FPlain write SetFPlain;
    property ScrollIncrement: Integer read FScrollIncrement write SetFScrollIncrement;
    property Shadow: Boolean read FShadow write SetFShadow;
    property ShadowString: string read FShadowString write SetFShadowString;
    property ShowSeparator: Boolean read FShowSeparator write SetFShowSeparator;
    property SubMenuAlign: string read FSubMenuAlign write SetFSubMenuAlign;
    property ZIndex: Integer read FZIndex write SetFZIndex;
    property OnClick: TExtMenuMenuOnClick read FOnClick write SetFOnClick;
    property OnItemclick: TExtMenuMenuOnItemclick read FOnItemclick write SetFOnItemclick;
    property OnMouseout: TExtMenuMenuOnMouseout read FOnMouseout write SetFOnMouseout;
    property OnMouseover: TExtMenuMenuOnMouseover read FOnMouseover write SetFOnMouseover;
  end;

  // Procedural types for events TExtMenuColorMenu
  TExtMenuColorMenuOnSelect = procedure(Palette: TExtColorPalette; Color: string)
    of object;

  TExtMenuColorMenu = class(TExtMenuMenu)
  private
    FHandler: TExtFunction;
    FHideOnClick: Boolean;
    FPaletteId: string;
    FScope: TExtObject;
    FPalette: TExtColorPalette;
    FOnSelect: TExtMenuColorMenuOnSelect;
    procedure SetFHandler(Value: TExtFunction);
    procedure SetFHideOnClick(Value: Boolean);
    procedure SetFPaletteId(Value: string);
    procedure SetFScope(Value: TExtObject);
    procedure SetFPalette(Value: TExtColorPalette);
    procedure SetFOnSelect(Value: TExtMenuColorMenuOnSelect);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    property Handler: TExtFunction read FHandler write SetFHandler;
    property HideOnClick: Boolean read FHideOnClick write SetFHideOnClick;
    property PaletteId: string read FPaletteId write SetFPaletteId;
    property Scope: TExtObject read FScope write SetFScope;
    property Palette: TExtColorPalette read FPalette write SetFPalette;
    property OnSelect: TExtMenuColorMenuOnSelect read FOnSelect write SetFOnSelect;
  end;

  // Procedural types for events TExtMenuDateMenu
  TExtMenuDateMenuOnSelect = procedure(Picker: TExtDatePicker; Date: TDateTime) of object;

  TExtMenuDateMenu = class(TExtMenuMenu)
  private
    FHandler: TExtFunction;
    FHideOnClick: Boolean;
    FPickerId: string;
    FScope: TExtObject;
    FPicker: TExtDatePicker;
    FOnSelect: TExtMenuDateMenuOnSelect;
    procedure SetFHandler(Value: TExtFunction);
    procedure SetFHideOnClick(Value: Boolean);
    procedure SetFPickerId(Value: string);
    procedure SetFScope(Value: TExtObject);
    procedure SetFPicker(Value: TExtDatePicker);
    procedure SetFOnSelect(Value: TExtMenuDateMenuOnSelect);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    class function JSClassName: string; override;
    property Handler: TExtFunction read FHandler write SetFHandler;
    property HideOnClick: Boolean read FHideOnClick write SetFHideOnClick;
    property PickerId: string read FPickerId write SetFPickerId;
    property Scope: TExtObject read FScope write SetFScope;
    property Picker: TExtDatePicker read FPicker write SetFPicker;
    property OnSelect: TExtMenuDateMenuOnSelect read FOnSelect write SetFOnSelect;
  end;

function ExtMenuMenuMgr: TExtMenuMenuMgrSingleton;

implementation

function ExtMenuMenuMgr: TExtMenuMenuMgrSingleton;
begin
  if (Session <> nil) then
    Result := Session.GetSingleton<TExtMenuMenuMgrSingleton>(TExtMenuMenuMgrSingleton.JSClassName)
  else
    Result := nil;
end;

class function TExtMenuMenuMgrSingleton.JSClassName: string;
begin
  Result := 'Ext.menu.MenuMgr';
end;

function TExtMenuMenuMgrSingleton.Get(Menu: string): TExtFunction;
begin
  JSCode(JSName + '.get(' + VarToJSON([Menu]) + ');', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

function TExtMenuMenuMgrSingleton.Get(Menu: TExtObject): TExtFunction;
begin
  JSCode(JSName + '.get(' + VarToJSON([Menu, false]) + ');', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

function TExtMenuMenuMgrSingleton.HideAll: TExtFunction;
begin
  JSCode(JSName + '.hideAll();', 'TExtMenuMenuMgrSingleton');
  Result := Self;
end;

procedure TExtMenuBaseItem.SetFActiveClass(Value: string);
begin
  FActiveClass := Value;
  JSCode('activeClass:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFCanActivate(Value: Boolean);
begin
  FCanActivate := Value;
  JSCode('canActivate:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFClickHideDelay(Value: Integer);
begin
  FClickHideDelay := Value;
  JSCode('clickHideDelay:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem._SetHandler(const AValue: TExtFunction);
begin
  FHandler.Free;
  FHandler := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'handler', 'setHandler', [AValue, True]);
end;

procedure TExtMenuBaseItem.SetFHideOnClick(Value: Boolean);
begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuBaseItem.SetFScope(Value: TExtObject);
begin
  FScope := Value;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuBaseItem.SetFParentMenu(Value: TExtMenuMenu);
begin
  FParentMenu := Value;
  JSCode(JSName + '.parentMenu=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuBaseItem.SetFOnActivate(Value: TExtMenuBaseItemOnActivate);
begin
  if Assigned(FOnActivate) then
    JSCode(JSName + '.events ["activate"].listeners=[];');
  if Assigned(Value) then
    on('activate', Ajax('activate', ['This', '%0.nm'], true));
  FOnActivate := Value;
end;

procedure TExtMenuBaseItem.SetFOnClick(Value: TExtMenuBaseItemOnClick);
begin
  if Assigned(FOnClick) then
    JSCode(JSName + '.events ["click"].listeners=[];');
  if Assigned(Value) then
    on('click', Ajax('click', ['This', '%0.nm', 'E', '%1.nm'], true));
  FOnClick := Value;
end;

procedure TExtMenuBaseItem.SetFOnDeactivate(Value: TExtMenuBaseItemOnDeactivate);
begin
  if Assigned(FOnDeactivate) then
    JSCode(JSName + '.events ["deactivate"].listeners=[];');
  if Assigned(Value) then
    on('deactivate', Ajax('deactivate', ['This', '%0.nm'], true));
  FOnDeactivate := Value;
end;

class function TExtMenuBaseItem.JSClassName: string;
begin
  Result := 'Ext.menu.BaseItem';
end;

procedure TExtMenuBaseItem.InitDefaults;
begin
  inherited;
  FActiveClass := 'x-menu-item-active';
  FClickHideDelay := 1;
  FHideOnClick := true;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FParentMenu := TExtMenuMenu.CreateInternal(Self, 'parentMenu');
end;

function TExtMenuBaseItem.SetHandler(const AHandler: TExtFunction; const AScope: TExtObject): TExtFunction;
begin
  FHandler.Free;
  FHandler := AHandler;
  ExtSession.ResponseItems.CallMethod(Self, 'setHandler', [AHandler, True, AScope, False]);
  Result := Self;
end;

procedure TExtMenuBaseItem.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'activate') and Assigned(FOnActivate) then
    FOnActivate(TExtMenuBaseItem(ParamAsObject('This')))
  else if (AEvtName = 'click') and Assigned(FOnClick) then
    FOnClick(TExtMenuBaseItem(ParamAsObject('This')), ExtEventObject)
  else if (AEvtName = 'deactivate') and Assigned(FOnDeactivate) then
    FOnDeactivate(TExtMenuBaseItem(ParamAsObject('This')));
end;

procedure TExtMenuSeparator.SetFHideOnClick(Value: Boolean);
begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuSeparator.SetFItemCls(Value: string);
begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

class function TExtMenuSeparator.JSClassName: string;
begin
  Result := 'Ext.menu.Separator';
end;

procedure TExtMenuSeparator.InitDefaults;
begin
  inherited;
  FItemCls := 'x-menu-sep';
end;

procedure TExtMenuTextItem.SetFHideOnClick(Value: Boolean);
begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuTextItem.SetFItemCls(Value: string);
begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuTextItem.SetFText(Value: string);
begin
  FText := Value;
  JSCode('text:' + VarToJSON([Value]));
end;

class function TExtMenuTextItem.JSClassName: string;
begin
  Result := 'Ext.menu.TextItem';
end;

procedure TExtMenuTextItem.InitDefaults;
begin
  inherited;
  FItemCls := 'x-menu-text';
end;

procedure TExtMenuItem.SetFCanActivate(Value: Boolean);
begin
  FCanActivate := Value;
  JSCode('canActivate:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFHref(Value: string);
begin
  FHref := Value;
  JSCode('href:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFHrefTarget(Value: string);
begin
  FHrefTarget := Value;
  JSCode('hrefTarget:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetFIcon(Value: string);
begin
  FIcon := Value;
  JSCode('icon:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetIconCls(const AValue: string);
begin
  FIconCls := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'iconCls', [AValue]);
end;

procedure TExtMenuItem.SetFItemCls(Value: string);
begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetMenu(AValue: TExtMenuMenu);
begin
  FMenu.Free;
  FMenu := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'menu', [AValue, False]);
end;

procedure TExtMenuItem.SetFShowDelay(Value: Integer);
begin
  FShowDelay := Value;
  JSCode('showDelay:' + VarToJSON([Value]));
end;

procedure TExtMenuItem.SetText(const AValue: string);
begin
  FText := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'text', 'setText', [AValue]);
end;

procedure TExtMenuItem.SetFMenu_(Value: TExtMenuMenu);
begin
  FMenu_ := Value;
  JSCode(JSName + '.menu=' + VarToJSON([Value, false]) + ';');
end;

class function TExtMenuItem.JSClassName: string;
begin
  Result := 'Ext.menu.Item';
end;

procedure TExtMenuItem.InitDefaults;
begin
  inherited;
  FCanActivate := true;
  FHref := '#';
  FItemCls := 'x-menu-item';
  FMenu := TExtMenuMenu.CreateInternal(Self, 'menu');
  FShowDelay := 200;
  FMenu_ := TExtMenuMenu.CreateInternal(Self, 'menu');
end;

function TExtMenuItem.SetIconClass(Cls: string): TExtFunction;
begin
  JSCode(JSName + '.setIconClass(' + VarToJSON([Cls]) + ');', 'TExtMenuItem');
  Result := Self;
end;
procedure TExtMenuCheckItem._SetChecked(const AValue: Boolean);
begin
  FChecked := AValue;
  ExtSession.ResponseItems.SetConfigItem(Self, 'checked', 'setChacked', [AValue]);
end;

procedure TExtMenuCheckItem.SetFGroup(Value: string);
begin
  FGroup := Value;
  JSCode('group:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFGroupClass(Value: string);
begin
  FGroupClass := Value;
  JSCode('groupClass:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFItemCls(Value: string);
begin
  FItemCls := Value;
  JSCode('itemCls:' + VarToJSON([Value]));
end;

procedure TExtMenuCheckItem.SetFOnBeforecheckchange
  (Value: TExtMenuCheckItemOnBeforecheckchange);
begin
  if Assigned(FOnBeforecheckchange) then
    JSCode(JSName + '.events ["beforecheckchange"].listeners=[];');
  if Assigned(Value) then
    on('beforecheckchange', Ajax('beforecheckchange', ['This', '%0.nm', 'Checked',
      '%1'], true));
  FOnBeforecheckchange := Value;
end;

procedure TExtMenuCheckItem.SetFOnCheckchange(Value: TExtMenuCheckItemOnCheckchange);
begin
  if Assigned(FOnCheckchange) then
    JSCode(JSName + '.events ["checkchange"].listeners=[];');
  if Assigned(Value) then
    on('checkchange', Ajax('checkchange', ['This', '%0.nm', 'Checked', '%1'], true));
  FOnCheckchange := Value;
end;

class function TExtMenuCheckItem.JSClassName: string;
begin
  Result := 'Ext.menu.CheckItem';
end;

procedure TExtMenuCheckItem.InitDefaults;
begin
  inherited;
  FGroupClass := 'x-menu-group-item';
  FItemCls := 'x-menu-item x-menu-check-item';
end;

function TExtMenuCheckItem.CheckHandler(This: TExtMenuCheckItem; Checked: Boolean)
  : TExtFunction;
begin
  JSCode(JSName + '.checkHandler(' + VarToJSON([This, false, Checked]) + ');',
    'TExtMenuCheckItem');
  Result := Self;
end;

function TExtMenuCheckItem.SetChecked(const AChecked: Boolean; const ASuppressEvent: Boolean): TExtFunction;
begin
  FChecked := AChecked;
  ExtSession.ResponseItems.CallMethod(Self, 'setChacked', [AChecked, ASuppressEvent]);
  Result := Self;
end;

procedure TExtMenuCheckItem.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'beforecheckchange') and Assigned(FOnBeforecheckchange) then
    FOnBeforecheckchange(TExtMenuCheckItem(ParamAsObject('This')),
      ParamAsBoolean('Checked'))
  else if (AEvtName = 'checkchange') and Assigned(FOnCheckchange) then
    FOnCheckchange(TExtMenuCheckItem(ParamAsObject('This')), ParamAsBoolean('Checked'));
end;

procedure TExtMenuMenu.SetFAllowOtherMenus(Value: Boolean);
begin
  FAllowOtherMenus := Value;
  JSCode('allowOtherMenus:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFDefaultAlign(Value: string);
begin
  FDefaultAlign := Value;
  JSCode('defaultAlign:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFDefaultOffsets(Value: TExtObjectList);
begin
  FDefaultOffsets := Value;
  JSCode('defaultOffsets:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFDefaults(Value: TExtObject);
begin
  FDefaults := Value;
  JSCode('defaults:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFEnableScrolling(Value: Boolean);
begin
  FEnableScrolling := Value;
  JSCode('enableScrolling:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFFloating(Value: Boolean);
begin
  FFloating := Value;
  JSCode('floating:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFIgnoreParentClicks(Value: Boolean);
begin
  FIgnoreParentClicks := Value;
  JSCode('ignoreParentClicks:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFItems(Value: TExtObjectList);
begin
  FItems := Value;
  JSCode('items:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFLayout(Value: string);
begin
  FLayout := Value;
  JSCode('layout:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFLayoutObject(Value: TExtObject);
begin
  FLayoutObject := Value;
  JSCode('layout:' + VarToJSON([Value, false]));
end;

procedure TExtMenuMenu.SetFMaxHeight(Value: Integer);
begin
  FMaxHeight := Value;
  JSCode('maxHeight:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFMinWidth(Value: Integer);
begin
  FMinWidth := Value;
  JSCode('minWidth:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFPlain(Value: Boolean);
begin
  FPlain := Value;
  JSCode('plain:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFScrollIncrement(Value: Integer);
begin
  FScrollIncrement := Value;
  JSCode('scrollIncrement:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShadow(Value: Boolean);
begin
  FShadow := Value;
  JSCode('shadow:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShadowString(Value: string);
begin
  FShadowString := Value;
  JSCode('shadow:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFShowSeparator(Value: Boolean);
begin
  FShowSeparator := Value;
  JSCode('showSeparator:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFSubMenuAlign(Value: string);
begin
  FSubMenuAlign := Value;
  JSCode('subMenuAlign:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFZIndex(Value: Integer);
begin
  FZIndex := Value;
  JSCode('zIndex:' + VarToJSON([Value]));
end;

procedure TExtMenuMenu.SetFOnClick(Value: TExtMenuMenuOnClick);
begin
  if Assigned(FOnClick) then
    JSCode(JSName + '.events ["click"].listeners=[];');
  if Assigned(Value) then
    on('click', Ajax('click', ['This', '%0.nm', 'MenuItem', '%1.nm', 'E',
      '%2.nm'], true));
  FOnClick := Value;
end;

procedure TExtMenuMenu.SetFOnItemclick(Value: TExtMenuMenuOnItemclick);
begin
  if Assigned(FOnItemclick) then
    JSCode(JSName + '.events ["itemclick"].listeners=[];');
  if Assigned(Value) then
    on('itemclick', Ajax('itemclick', ['BaseItem', '%0.nm', 'E', '%1.nm'], true));
  FOnItemclick := Value;
end;

procedure TExtMenuMenu.SetFOnMouseout(Value: TExtMenuMenuOnMouseout);
begin
  if Assigned(FOnMouseout) then
    JSCode(JSName + '.events ["mouseout"].listeners=[];');
  if Assigned(Value) then
    on('mouseout', Ajax('mouseout', ['This', '%0.nm', 'E', '%1.nm', 'MenuItem',
      '%2.nm'], true));
  FOnMouseout := Value;
end;

procedure TExtMenuMenu.SetFOnMouseover(Value: TExtMenuMenuOnMouseover);
begin
  if Assigned(FOnMouseover) then
    JSCode(JSName + '.events ["mouseover"].listeners=[];');
  if Assigned(Value) then
    on('mouseover', Ajax('mouseover', ['This', '%0.nm', 'E', '%1.nm', 'MenuItem',
      '%2.nm'], true));
  FOnMouseover := Value;
end;

class function TExtMenuMenu.JSClassName: string;
begin
  Result := 'Ext.menu.Menu';
end;

procedure TExtMenuMenu.InitDefaults;
begin
  inherited;
  FDefaultAlign := 'tl-bl?';
  FDefaultOffsets := TExtObjectList.CreateAsAttribute(Self, 'defaultOffsets');
  FDefaults := TExtObject.CreateInternal(Self, 'defaults');
  FEnableScrolling := true;
  FItems := TExtObjectList.CreateAsAttribute(Self, 'items');
  FLayoutObject := TExtObject.CreateInternal(Self, 'layout');
  FMinWidth := 120;
  FScrollIncrement := 24;
  FShowSeparator := true;
  FSubMenuAlign := 'tl-tr?';
end;

function TExtMenuMenu.AddElement(El: string): TExtFunction;
begin
  JSCode(JSName + '.addElement(' + VarToJSON([El]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddItem(Item: TExtMenuItem): TExtFunction;
begin
  JSCode(JSName + '.addItem(' + VarToJSON([Item, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddMenuItem(Config: TExtObject = nil): TExtFunction;
begin
  JSCode(JSName + '.addMenuItem(' + VarToJSON([Config, false]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddSeparator: TExtFunction;
begin
  JSCode(JSName + '.addSeparator();', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.AddText(Text: string): TExtFunction;
begin
  JSCode(JSName + '.addText(' + VarToJSON([Text]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.Hide(Deep: Boolean = false): TExtFunction;
begin
  JSCode(JSName + '.hide(' + VarToJSON([Deep]) + ');', 'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.Show(Element: string; Position: string = '';
  ParentMenu: TExtMenuMenu = nil): TExtFunction;
begin
  JSCode(JSName + '.show(' + VarToJSON([Element, Position, ParentMenu, false]) + ');',
    'TExtMenuMenu');
  Result := Self;
end;

function TExtMenuMenu.ShowAt(XyPosition: TExtObjectList; ParentMenu: TExtMenuMenu = nil)
  : TExtFunction;
begin
  JSCode(JSName + '.showAt(' + VarToJSON(XyPosition) + ',' + VarToJSON([ParentMenu, false]
    ) + ');', 'TExtMenuMenu');
  Result := Self;
end;

procedure TExtMenuMenu.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'click') and Assigned(FOnClick) then
    FOnClick(TExtMenuMenu(ParamAsObject('This')), TExtMenuItem(ParamAsObject('MenuItem')),
      ExtEventObject)
  else if (AEvtName = 'itemclick') and Assigned(FOnItemclick) then
    FOnItemclick(TExtMenuBaseItem(ParamAsObject('BaseItem')), ExtEventObject)
  else if (AEvtName = 'mouseout') and Assigned(FOnMouseout) then
    FOnMouseout(TExtMenuMenu(ParamAsObject('This')), ExtEventObject,
      TExtMenuItem(ParamAsObject('MenuItem')))
  else if (AEvtName = 'mouseover') and Assigned(FOnMouseover) then
    FOnMouseover(TExtMenuMenu(ParamAsObject('This')), ExtEventObject,
      TExtMenuItem(ParamAsObject('MenuItem')));
end;

procedure TExtMenuColorMenu.SetFHandler(Value: TExtFunction);
begin
  FHandler := Value;
  JSCode('handler:' + VarToJSON([Value, true]));
end;

procedure TExtMenuColorMenu.SetFHideOnClick(Value: Boolean);
begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuColorMenu.SetFPaletteId(Value: string);
begin
  FPaletteId := Value;
  JSCode('paletteId:' + VarToJSON([Value]));
end;

procedure TExtMenuColorMenu.SetFScope(Value: TExtObject);
begin
  FScope := Value;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuColorMenu.SetFPalette(Value: TExtColorPalette);
begin
  FPalette := Value;
  JSCode(JSName + '.palette=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuColorMenu.SetFOnSelect(Value: TExtMenuColorMenuOnSelect);
begin
  if Assigned(FOnSelect) then
    JSCode(JSName + '.events ["select"].listeners=[];');
  if Assigned(Value) then
    on('select', Ajax('select', ['Palette', '%0.nm', 'Color', '%1'], true));
  FOnSelect := Value;
end;

class function TExtMenuColorMenu.JSClassName: string;
begin
  Result := 'Ext.menu.ColorMenu';
end;

procedure TExtMenuColorMenu.InitDefaults;
begin
  inherited;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FPalette := TExtColorPalette.CreateInternal(Self, 'palette');
end;

procedure TExtMenuColorMenu.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'select') and Assigned(FOnSelect) then
    FOnSelect(TExtColorPalette(ParamAsObject('Palette')), ParamAsString('Color'));
end;

procedure TExtMenuDateMenu.SetFHandler(Value: TExtFunction);
begin
  FHandler := Value;
  JSCode('handler:' + VarToJSON([Value, true]));
end;

procedure TExtMenuDateMenu.SetFHideOnClick(Value: Boolean);
begin
  FHideOnClick := Value;
  JSCode('hideOnClick:' + VarToJSON([Value]));
end;

procedure TExtMenuDateMenu.SetFPickerId(Value: string);
begin
  FPickerId := Value;
  JSCode('pickerId:' + VarToJSON([Value]));
end;

procedure TExtMenuDateMenu.SetFScope(Value: TExtObject);
begin
  FScope := Value;
  JSCode('scope:' + VarToJSON([Value, false]));
end;

procedure TExtMenuDateMenu.SetFPicker(Value: TExtDatePicker);
begin
  FPicker := Value;
  JSCode(JSName + '.picker=' + VarToJSON([Value, false]) + ';');
end;

procedure TExtMenuDateMenu.SetFOnSelect(Value: TExtMenuDateMenuOnSelect);
begin
  if Assigned(FOnSelect) then
    JSCode(JSName + '.events ["select"].listeners=[];');
  if Assigned(Value) then
    on('select', Ajax('select', ['Picker', '%0.nm', 'Date', '%1'], true));
  FOnSelect := Value;
end;

class function TExtMenuDateMenu.JSClassName: string;
begin
  Result := 'Ext.menu.DateMenu';
end;

procedure TExtMenuDateMenu.InitDefaults;
begin
  inherited;
  FScope := TExtObject.CreateInternal(Self, 'scope');
  FPicker := TExtDatePicker.CreateInternal(Self, 'picker');
end;

procedure TExtMenuDateMenu.HandleEvent(const AEvtName: string);
begin
  inherited;
  if (AEvtName = 'select') and Assigned(FOnSelect) then
    FOnSelect(TExtDatePicker(ParamAsObject('Picker')), ParamAsTDateTime('Date'));
end;

end.

