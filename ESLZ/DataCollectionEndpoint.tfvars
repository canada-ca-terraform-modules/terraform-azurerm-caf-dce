data_collection_endpoints = {
  example = {
    resource_group = "Project" # key in resource_groups map, or full Azure resource ID

    # Optional: Linux, Windows
    # kind = "Linux"

    # Optional: free-form description
    # description = "Ingestion endpoint for Linux VMs running the Azure Monitor Agent"

    # Optional: whether network access from the public internet is allowed. Defaults to true.
    # public_network_access_enabled = false
  }
}
