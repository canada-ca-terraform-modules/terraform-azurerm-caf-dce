variable "env" {
  description = "Environment prefix used in the generated DCE name"
  type        = string
  default     = "livetest"
}

variable "group" {
  description = "Group segment used in the generated DCE name"
  type        = string
  default     = "caf"
}

variable "project" {
  description = "Project segment used in the generated DCE name"
  type        = string
  default     = "dce"
}

variable "userDefinedString" {
  description = "UserDefinedString segment used in the generated DCE name"
  type        = string
  default     = "livetest"
}

variable "location" {
  description = "Location for the throwaway live-test resource group"
  type        = string
  default     = "canadacentral"
}

variable "tags" {
  description = "Tags applied to the resources created by this harness"
  type        = map(string)
  default = {
    purpose = "module-live-test"
  }
}

variable "pr_number" {
  description = <<-EOT
    Suffix applied to test_dependencies.tf resource names so concurrent PRs
    against this module never collide on the same sandbox subscription. CI
    sources this from `TF_VAR_pr_number` (`github.event.number`); manual runs
    can leave the default or pass their own value.
  EOT
  type        = string
  default     = "manual"
}

variable "repository" {
  description = "This repo's own org/name slug - tags the live-test resource group so the shared-subscription sweeper only ever matches this repo's own PRs"
  type        = string
  default     = "canada-ca-terraform-modules/terraform-azurerm-caf-dce"
}

variable "dce" {
  description = "Data Collection Endpoint configuration object, passed straight through to the module under test"
  type        = any
}
