//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "dxBackend.ConnectionString.SQL.hpp"
#include "dxBackend.hpp"
#include "dxBackend.Utils.WebBrowserForm.hpp"
#include "dxCore.h"
#include "dxDashboard.Control.hpp"
#include "dxLayoutContainer.hpp"
#include "dxLayoutControl.hpp"
#include "dxLayoutControlAdapters.hpp"
#include "dxLayoutcxEditAdapters.hpp"
#include "dxSkinsForm.hpp"
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.SQLite.hpp>
#include <FireDAC.Phys.SQLiteDef.hpp>
#include <FireDAC.Phys.SQLiteWrapper.Stat.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.ExprFuncs.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TdxLayoutControl *dxLayoutControl1;
	TcxButton *btnDesign;
	TdxDashboardControl *dxDashboardControl1;
	TcxButton *btnView;
	TcxLookupComboBox *cbCountries;
	TdxLayoutGroup *dxLayoutControl1Group_Root;
	TdxLayoutItem *liBtnShowDesigner;
	TdxLayoutItem *liDashboardControl;
	TdxLayoutGroup *lgButtons;
	TdxLayoutItem *liBtnDelete;
	TdxLayoutItem *licbCountries;
	TdxBackendDataConnectionManager *dxBackendDataConnectionManager1;
	TdxBackendDatabaseSQLConnection *NWindConnectionString;
	TDataSource *dsNWind;
	TdxSkinController *dxSkinController1;
	TFDConnection *FDConnection1;
	TFDQuery *FDNWind;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall btnDesignClick(TObject *Sender);
	void __fastcall btnViewClick(TObject *Sender);
	void __fastcall cbCountriesPropertiesEditValueChanged(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
