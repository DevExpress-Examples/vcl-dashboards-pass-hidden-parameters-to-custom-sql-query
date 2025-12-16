//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uMainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBLookupEdit"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxLookupEdit"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "dxBackend"

#if defined(_WIN64)
  #pragma link "dxBackend.ConnectionString.SQL.O"
#else
  #pragma link "dxBackend.ConnectionString.SQL.OBJ"
#endif

#pragma link "dxBackend.Utils.WebBrowserForm"
#pragma link "dxCore"
#pragma link "dxDashboard.Control"
#pragma link "dxLayoutContainer"
#pragma link "dxLayoutControl"
#pragma link "dxLayoutControlAdapters"
#pragma link "dxLayoutcxEditAdapters"
#pragma link "dxSkinsForm"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::FormCreate(TObject *Sender)
{
	FDNWind->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnDesignClick(TObject *Sender)
{
	dxDashboardControl1->ShowDesigner();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnViewClick(TObject *Sender)
{
	dxDashboardControl1->ShowViewer();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::cbCountriesPropertiesEditValueChanged(TObject *Sender)

{
	dxDashboardControl1
		->Parameters->ParamByName[L"CountryDashboardParameter"]
		->Value = cbCountries->EditValue;

	dxDashboardControl1->Dashboard->ApplyParametersToState();
}
//---------------------------------------------------------------------------

