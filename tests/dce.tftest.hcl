# tests/dce.tftest.hcl
mock_provider "azurerm" {}

variables {
  env               = "Dev"
  group             = "SLRD"
  project           = "test"
  userDefinedString = "endpoint"
  location          = "canadacentral"
  resource_groups = {
    Project = { name = "rg-proj", id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-proj" }
  }
  tags = { environment = "dev" }
}

# ─── naming_convention ──────────────────────────────────────────────────────
run "naming_convention" {
  command = plan

  variables {
    dce = {
      resource_group = "Project"
    }
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.name == "dev-slrd-test-endpoint"
    error_message = "Name must follow {env4}-{group}-{project}-{userDefinedString} convention"
  }
}

# ─── default_values ─────────────────────────────────────────────────────────
run "default_values" {
  command = plan

  variables {
    dce = {
      resource_group = "Project"
    }
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.location == "canadacentral"
    error_message = "Default location must apply when not overridden"
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.public_network_access_enabled == true
    error_message = "public_network_access_enabled must default to true per the registry default"
  }
}

# ─── kind_and_description ───────────────────────────────────────────────────
run "kind_and_description" {
  command = plan

  variables {
    dce = {
      resource_group = "Project"
      kind           = "Linux"
      description    = "Ingestion endpoint for Linux VMs"
    }
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.kind == "Linux"
    error_message = "kind must be set when provided"
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.description == "Ingestion endpoint for Linux VMs"
    error_message = "description must be set when provided"
  }
}

# ─── public_network_access_disabled ─────────────────────────────────────────
run "public_network_access_disabled" {
  command = plan

  variables {
    dce = {
      resource_group                = "Project"
      public_network_access_enabled = false
    }
  }

  assert {
    condition     = azurerm_monitor_data_collection_endpoint.dce.public_network_access_enabled == false
    error_message = "public_network_access_enabled must be overridable to false"
  }
}
