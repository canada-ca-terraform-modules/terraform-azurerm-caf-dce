# terraform-azurerm-caf-dce

Deploys an Azure Monitor Data Collection Endpoint (`azurerm_monitor_data_collection_endpoint`),
used to ingest logs/metrics from Azure Monitor Agent when a Data Collection Rule needs a
dedicated network ingestion point (e.g. private-link-restricted VMs). Requires azurerm `~> 5.0`.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 5.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_data_collection_endpoint.dce](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_data_collection_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dce"></a> [dce](#input\_dce) | Data Collection Endpoint object containing all parameters. Supported properties include:<br/>  - resource\_group (Required): key in resource\_groups map, or a full resource group ID<br/>  - kind (Optional): Linux, Windows<br/>  - description (Optional)<br/>  - public\_network\_access\_enabled (Optional): defaults to true<br/>  - tags (Optional) | `any` | `{}` | no |
| <a name="input_env"></a> [env](#input\_env) | (Required) Environment for the Data Collection Endpoint | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | (Required) Group for the project | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) specifies the Azure location where the resource exists | `string` | `"canadacentral"` | no |
| <a name="input_project"></a> [project](#input\_project) | (Required) Project name | `string` | n/a | yes |
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | (Required) Resource group object for the Data Collection Endpoint | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the resources | `map(string)` | `{}` | no |
| <a name="input_userDefinedString"></a> [userDefinedString](#input\_userDefinedString) | (Required) UserDefinedString for the Data Collection Endpoint | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dce_configuration_access_endpoint"></a> [dce\_configuration\_access\_endpoint](#output\_dce\_configuration\_access\_endpoint) | Outputs the endpoint used for accessing configuration |
| <a name="output_dce_id"></a> [dce\_id](#output\_dce\_id) | Outputs the id of the Data Collection Endpoint |
| <a name="output_dce_immutable_id"></a> [dce\_immutable\_id](#output\_dce\_immutable\_id) | Outputs the immutable id of the Data Collection Endpoint |
| <a name="output_dce_logs_ingestion_endpoint"></a> [dce\_logs\_ingestion\_endpoint](#output\_dce\_logs\_ingestion\_endpoint) | Outputs the endpoint used for ingesting logs |
| <a name="output_dce_metrics_ingestion_endpoint"></a> [dce\_metrics\_ingestion\_endpoint](#output\_dce\_metrics\_ingestion\_endpoint) | Outputs the endpoint used for ingesting metrics |
| <a name="output_dce_name"></a> [dce\_name](#output\_dce\_name) | Outputs the name of the Data Collection Endpoint |
| <a name="output_dce_object"></a> [dce\_object](#output\_dce\_object) | Outputs the entire Data Collection Endpoint object |
<!-- END_TF_DOCS -->
