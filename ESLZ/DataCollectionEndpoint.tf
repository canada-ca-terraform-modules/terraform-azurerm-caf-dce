variable "data_collection_endpoints" {
  description = "Data Collection Endpoints to deploy"
  type        = any
  default     = {}
}

module "dce" {
  source   = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-dce.git?ref=v1.0.0"
  for_each = var.data_collection_endpoints

  userDefinedString = each.key
  env               = var.env
  group             = var.group
  project           = var.project
  location          = var.location
  resource_groups   = local.resource_groups_all
  dce               = each.value
  tags              = var.tags
}
