variable "env" {
  description = "(Required) Environment for the Data Collection Endpoint"
  type        = string
}

variable "group" {
  description = "(Required) Group for the project"
  type        = string
}

variable "project" {
  description = "(Required) Project name"
  type        = string
}

variable "userDefinedString" {
  description = "(Required) UserDefinedString for the Data Collection Endpoint"
  type        = string
}

variable "location" {
  description = "(Required) specifies the Azure location where the resource exists"
  type        = string
  default     = "canadacentral"
}

variable "resource_groups" {
  description = "(Required) Resource group object for the Data Collection Endpoint"
  type        = any
}

variable "dce" {
  description = <<EOT
Data Collection Endpoint object containing all parameters. Supported properties include:
  - resource_group (Required): key in resource_groups map, or a full resource group ID
  - kind (Optional): Linux, Windows
  - description (Optional)
  - public_network_access_enabled (Optional): defaults to true
  - tags (Optional)
EOT
  type        = any
  default     = {}
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}
