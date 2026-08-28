# config/dce.tfvars
# Tracked, ready-to-run fixture for the test/live harness - one representative
# real-usage instance, not a two-code-path engineered fixture and not a
# dormant "_" template.
#
# Exercises kind, description, and an explicit public_network_access_enabled
# override.
#
# Maintained by whoever adds a new optional input to the module: update this
# file in the same PR if you want live coverage of it, same discipline as
# updating tests/dce.tftest.hcl.

env               = "livetest"
group             = "caf"
project           = "dce"
userDefinedString = "livetest"

dce = {
  resource_group                = "live_test" # key from local.resource_groups (test_dependencies.tf)
  kind                          = "Linux"
  description                   = "live-test Data Collection Endpoint"
  public_network_access_enabled = true
}
