<!-- default badges list -->
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# DevExpress VCL Dashboards — Pass a Hidden Dashboard Parameter to an SQL Query

This example passes a hidden [dashboard parameter](https://docs.devexpress.com/Dashboard/117062/web-dashboard/create-dashboards-on-the-web/data-analysis/dashboard-parameters) to an SQL query. This sample solution relies on the [TdxCustomDashboardControl.Parameters](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Parameters) property to access and modify the target dashboard parameter.

## Prerequisites

* Microsoft Window 10 or newer
* Embarcadero RAD Studio IDE 10.4 (Sydney) or newer (Community Edition is not supported)
* DevExpress VCL Components v25.2.3 or newer

## Sample Scenario Overview

To pass a hidden dashboard parameter to an SQL query, you must:

### Create a Dashboard Parameter

Open the [dashboard designer](https://docs.devexpress.com/Dashboard/116518/basic-concepts-and-terminology/dashboard-designer#web-dashboard---designer-mode) (select the **Designer...** item in the [TdxDashboardControl](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxDashboardControl) component's context menu at design time or call [ShowDesigner](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.ShowDesigner) in code).

![DevExpress VCL Dashboards - Open the Designer Dialog](/Images/vcl-dashboard-open-designer.png)

Open the [dashboard menu](https://docs.devexpress.com/Dashboard/117444) and click **Parameters**. Create a parameter and configure its settings within the **PARAMETERS** pane. Uncheck the [Visible](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.Model.Parameter#js_devexpress_dashboard_model_parameter_parametervisible) check box to hide the parameter in Viewer mode. This sample project creates a hidden parameter named **CountryDashboardParameter** and sets `France` as the default value:

![DevExpress VCL Dashboards - Add and Configure a Parameter](/Images/vcl-dashboard-parameters-pane.png)

### Create a Query

1. Select **Data Sources** in the dashboard menu.
2. Click **Add** within the **DATA SOURCES** pane to display the **Add Data Source** dialog.
3. Click **Create data source...** to run the [Dashboard Data Source Wizard](https://docs.devexpress.com/Dashboard/117680/web-dashboard/ui-elements-and-customization/dialogs-and-wizards/dashboard-data-source-wizard).
4. Create a new query as follows:

![DevExpress VCL Dashboards - Use the Query Builder Dialog](/Images/vcl-dashboard-query-builder-steps.gif)

### Bind a Query Parameter to a Dashboard Parameter

1. Create a new filter within the **QUERY PROPERTIES** section.
2. Add a new query parameter named **CountryParameter**.
3. Expand the **PARAMETERS** section.
4. Switch the parameter type to `Expression` for **CountryParameter**.
5. Set the parameter value to `CountryDashboardParameter`.

![DevExpress VCL Dashboards - Use the Filter Builder Dialog](/Images/vcl-dashboard-filter-editor.gif)

### Modify the Default Parameter Value in Code

The [TdxDashboardControl.Parameters](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Parameters) collection is initially empty. To populate the collection with parameters from a dashboard layout definition, you can call the [LoadParametersFromDashboard](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.LoadParametersFromDashboard) procedure at runtime. Alternatively, you can select **Load Parameters from Dashboard** in the [TdxDashboardControl](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxDashboardControl) component's context menu at design time:

![DevExpress VCL Dashboards - Load Dashboard Parameters at Design Time](/Images/vcl-dashboard-load-parameters.png)

#### Use the Populated Collection

```delphi
procedure TMainForm.cbCountriesPropertiesEditValueChanged(Sender: TObject);
begin
  dxDashboardControl1.Parameters[`CountryDashboardParameter`].Value := cbCountries.EditValue;
  dxDashboardControl1.ApplyParametersToState;
end;
```

## Documentation

* [Use Query Parameters](https://docs.devexpress.com/Dashboard/117192/web-dashboard/create-dashboards-on-the-web/providing-data/working-with-sql-data-sources/use-query-parameters)
* [Dashboard Parameters](https://docs.devexpress.com/Dashboard/117062/web-dashboard/create-dashboards-on-the-web/data-analysis/dashboard-parameters)
* [TdxCustomDashboardControl.Parameters](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.Parameters)
* [TdxCustomDashboardControl.LoadParametersFromDashboard](https://docs.devexpress.com/VCL/dxDashboard.Control.TdxCustomDashboardControl.LoadParametersFromDashboard)

<!-- feedback -->

## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-pass-hidden-parameters-to-custom-sql-query&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-dashboards-pass-hidden-parameters-to-custom-sql-query&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
