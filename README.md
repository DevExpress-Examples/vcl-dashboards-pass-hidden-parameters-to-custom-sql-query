<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1116786848/25.2.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1318706)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# DevExpress Dashboards for Delphi/C++Builder — Pass a Hidden Dashboard Parameter to a SQL Query

This example demonstrates a dashboard that displays sales data for a selected country.
The selected country is passed to the underlying SQL query as a hidden [dashboard parameter][dashboard-parameters].
This sample solution uses the [TdxCustomDashboardControl.Parameters][Parameters] property
to access and modify the target dashboard parameter.

## Prerequisites

[DevExpress Reports Prerequisites][req]

[req]: https://docs.devexpress.com/VCL/405773/ExpressCrossPlatformLibrary/vcl-backend/reports-dashboards-app-deployment#vcl-reportsdashboards-prerequisites

## Implementation Details

The scenario demonstrated in this project relies on a configured dashboard layout shipped with sample source code.

Follow these steps to add a hidden parameter to a dashboard and use the parameter in a SQL query:

- [DevExpress Dashboards for Delphi/C++Builder — Pass a Hidden Dashboard Parameter to a SQL Query](#devexpress-dashboards-for-delphicbuilder--pass-a-hidden-dashboard-parameter-to-a-sql-query)
  - [Prerequisites](#prerequisites)
  - [Implementation Details](#implementation-details)
    - [Step 1: Create a Dashboard Parameter](#step-1-create-a-dashboard-parameter)
    - [Step 2: Create a Query](#step-2-create-a-query)
    - [Step 3: Bind a Query Parameter to a Dashboard Parameter](#step-3-bind-a-query-parameter-to-a-dashboard-parameter)
      - [Step 4: Assign Parameter Values](#step-4-assign-parameter-values)
        - [Delphi](#delphi)
        - [C++](#c)
  - [Documentation](#documentation)
  - [Does This Example Address Your Development Requirements/Objectives?](#does-this-example-address-your-development-requirementsobjectives)

### Step 1: Create a Dashboard Parameter

1.  Open the DevExpress [Dashboard Designer][designer]
    (select the **Designer…** item from the [TdxDashboardControl] component's context menu at design time
    or call the [ShowDesigner] method in code).

    > ![DevExpress VCL Dashboards — Open the Designer Dialog](/Images/vcl-dashboard-open-designer.png)
2.  Open the [dashboard menu](https://docs.devexpress.com/Dashboard/117444) and click **Parameters**.
3.  Create a parameter and configure its settings within the **PARAMETERS** pane.
4.  Uncheck the [Visible][visible-cb] check box to hide the parameter in Dashboard Viewer mode.

[visible-cb]: https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.Model.Parameter#js_devexpress_dashboard_model_parameter_parametervisible

This sample project creates a hidden parameter named `CountryDashboardParameter` and sets `France` as the default value:

> ![DevExpress VCL Dashboards — Add and Configure a Parameter](/Images/vcl-dashboard-parameters-pane.png)

### Step 2: Create a Query

1.  Select **Data Sources** in the dashboard menu.
2.  Click **Add** within the **DATA SOURCES** pane to display the **Add Data Source** dialog.
3.  Click **Create data source…** to run the [Dashboard Data Source Wizard][data-source-wizard].
4.  Create a new query as follows:

    > ![DevExpress VCL Dashboards — Use the Query Builder Dialog](/Images/vcl-dashboard-query-builder-steps.gif)

### Step 3: Bind a Query Parameter to a Dashboard Parameter

1.  Create a new filter within the **QUERY PROPERTIES** section.
2.  Add a new query parameter named **CountryParameter**.
3.  Expand the **PARAMETERS** section.
4.  Switch parameter type to `Expression` for **CountryParameter**.
5.  Set the parameter value to `CountryDashboardParameter`.

    > ![DevExpress VCL Dashboards — Use the Filter Builder Dialog](/Images/vcl-dashboard-filter-editor.gif)

#### Step 4: Assign Parameter Values

To modify parameters in a dashboard, assign values to individual [Parameters] collection members as follows:

<!-- start-code-block -->
##### Delphi
```delphi
procedure TMainForm.cbCountriesPropertiesEditValueChanged(Sender: TObject);
begin
  dxDashboardControl1.Parameters['CountryDashboardParameter'].Value := cbCountries.EditValue;
end;
```

##### C++
```c
void __fastcall TMainForm::cbCountriesPropertiesEditValueChanged(TObject *Sender)
{
  dxDashboardControl1->Parameters->ParamByName[L"CountryDashboardParameter"]->Value =
      cbCountries->EditValue;
}
```
<!-- end-code-block -->


## Documentation

-   [Introduction to DevExpress VCL Dashboards](https://docs.devexpress.com/VCL/405642/ExpressDashboards/vcl-dashboards)
-   [Get Started: Create a Dashboard Using the Designer Dialog][designer-dialog]
-   [Use Query Parameters](https://docs.devexpress.com/Dashboard/117192/web-dashboard/create-dashboards-on-the-web/providing-data/working-with-sql-data-sources/use-query-parameters)
-   [Dashboard Parameters][dashboard-parameters]
-   [DevExpress VCL Dashboards Prerequisites][req]
-   API reference:
    -   [TdxDashboardControl]
    -   [TdxCustomDashboardControl.Parameters][Parameters]
    -   [TdxCustomDashboardControl.ShowDesigner][ShowDesigner]

[designer]: https://docs.devexpress.com/Dashboard/116518/basic-concepts-and-terminology/dashboard-designer#web-dashboard---designer-mode
[data-source-wizard]: https://docs.devexpress.com/Dashboard/117680/web-dashboard/ui-elements-and-customization/dialogs-and-wizards/dashboard-data-source-wizard
[designer-dialog]: https://docs.devexpress.com/VCL/405774/ExpressDashboards/getting-started/create-dashboard-using-designer-dialog
[dashboard-parameters]: https://docs.devexpress.com/Dashboard/117062/web-dashboard/create-dashboards-on-the-web/data-analysis/dashboard-parameters


[TdxDashboardControl]: https://docs.devexpress.com/VCL/dxDashboard.Control.TdxDashboardControl
[Parameters]: https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Parameters

[ShowDesigner]: https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.ShowDesigner


<!-- feedback -->
## Does This Example Address Your Development Requirements/Objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-pass-hidden-parameters-to-custom-sql-query&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-pass-hidden-parameters-to-custom-sql-query&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
