unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.StdCtrls, dxmdaset,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl,
  dxBackend.Utils.WebBrowserForm, dxDashboard.Control, dxAI,
  dxAI.Commands.SmartPaste, cxTextEdit, cxMaskEdit, dxBackend,
  dxBackend.ConnectionString.SQL, Vcl.Grids, Vcl.DBGrids,
  dxLayoutcxEditAdapters, dxCore, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, cxContainer, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsForm;

type
  TMainForm = class(TForm)
    btnDesign: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    liBtnShowDesigner: TdxLayoutItem;
    dxDashboardControl1: TdxDashboardControl;
    liDashboardControl: TdxLayoutItem;
    lgButtons: TdxLayoutGroup;
    btnView: TcxButton;
    liBtnDelete: TdxLayoutItem;
    dxBackendDataConnectionManager1: TdxBackendDataConnectionManager;
    NWindConnectionString: TdxBackendDatabaseSQLConnection;
    dsNWind: TDataSource;
    dxSkinController1: TdxSkinController;
    FDConnection1: TFDConnection;
    FDNWind: TFDQuery;
    cbCountries: TcxLookupComboBox;
    licbCountries: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure cbCountriesPropertiesEditValueChanged(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FDNWind.Active := True;
end;

procedure TMainForm.btnDesignClick(Sender: TObject);
begin
  dxDashboardControl1.ShowDesigner;
end;

procedure TMainForm.btnViewClick(Sender: TObject);
begin
   dxDashboardControl1.ShowViewer;
end;

procedure TMainForm.cbCountriesPropertiesEditValueChanged(Sender: TObject);
begin
  dxDashboardControl1.Parameters['CountryDashboardParameter'].Value := cbCountries.EditValue;
  dxDashboardControl1.Dashboard.ApplyParametersToState;
end;

end.
