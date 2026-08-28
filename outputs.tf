output "dce_object" {
  description = "Outputs the entire Data Collection Endpoint object"
  value       = azurerm_monitor_data_collection_endpoint.dce
}

output "dce_name" {
  description = "Outputs the name of the Data Collection Endpoint"
  value       = azurerm_monitor_data_collection_endpoint.dce.name
}

output "dce_id" {
  description = "Outputs the id of the Data Collection Endpoint"
  value       = azurerm_monitor_data_collection_endpoint.dce.id
}

output "dce_immutable_id" {
  description = "Outputs the immutable id of the Data Collection Endpoint"
  value       = azurerm_monitor_data_collection_endpoint.dce.immutable_id
}

output "dce_configuration_access_endpoint" {
  description = "Outputs the endpoint used for accessing configuration"
  value       = azurerm_monitor_data_collection_endpoint.dce.configuration_access_endpoint
}

output "dce_logs_ingestion_endpoint" {
  description = "Outputs the endpoint used for ingesting logs"
  value       = azurerm_monitor_data_collection_endpoint.dce.logs_ingestion_endpoint
}

output "dce_metrics_ingestion_endpoint" {
  description = "Outputs the endpoint used for ingesting metrics"
  value       = azurerm_monitor_data_collection_endpoint.dce.metrics_ingestion_endpoint
}
