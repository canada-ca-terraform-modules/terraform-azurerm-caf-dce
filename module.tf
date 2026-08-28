resource "azurerm_monitor_data_collection_endpoint" "dce" {
  name                = local.dce_name
  resource_group_name = local.resource_group_name
  location            = var.location

  # Optional top-level parameters
  kind                          = try(var.dce.kind, null)
  description                   = try(var.dce.description, null)
  public_network_access_enabled = try(var.dce.public_network_access_enabled, true)

  tags = merge(var.tags, try(var.dce.tags, {}))
}
