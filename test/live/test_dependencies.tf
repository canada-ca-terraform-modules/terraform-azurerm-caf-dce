# test_dependencies.tf
# Self-contained dependency resources, owned entirely by this harness.
#
# Deliberately NOT reusing any shared/production resource group: writing into
# shared infra usually requires elevated, non-sandbox permissions. A
# dedicated throwaway RG here needs only Contributor on the sandbox
# subscription and can never collide with or affect any production resource.
#
# terraform-azurerm-caf-dce needs only a resource group (keyed map,
# `var.resource_groups`) - the endpoint resource has no other dependencies.

resource "azurerm_resource_group" "live_test" {
  # PR-number suffix keeps two concurrently open PRs against this module
  # from colliding on the same sandbox resource group.
  name     = "${var.env}-caf-dce-live-test-${var.pr_number}-rg"
  location = var.location

  # pr-number tag: lets the nightly orphan sweeper find this RG by tag and
  # match it back to a PR, independent of naming convention.
  # repository tag: the sandbox subscription is shared across module repos,
  # so the sweeper must scope its `pr-number` matches to only this repo's
  # own PRs - otherwise a PR number collision across repos could
  # misclassify (or destroy) another repo's live resource group.
  tags = merge(var.tags, {
    "pr-number"  = var.pr_number
    "repository" = var.repository
  })
}

locals {
  # Keyed map matching terraform-azurerm-caf-dce's expected shape:
  # var.resource_groups[var.dce.resource_group].name
  resource_groups = { live_test = { name = azurerm_resource_group.live_test.name } }
}
