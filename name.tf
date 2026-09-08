locals {
  dce_regex                             = "/[^0-9a-z]/"
  env-regex_compliant_4                 = replace(lower(substr(var.env, 0, 4)), local.dce_regex, "")
  group-regex_compliant                 = replace(lower(var.group), local.dce_regex, "")
  project-regex_compliant               = replace(lower(var.project), local.dce_regex, "")
  dce-userDefinedString-regex_compliant = replace(lower(var.userDefinedString), local.dce_regex, "")
  dce_prefix                            = "${local.env-regex_compliant_4}-${local.group-regex_compliant}-${local.project-regex_compliant}"
  dce_suffix                            = "-dce"
  dce_name                              = "${substr("${local.dce_prefix}-${local.dce-userDefinedString-regex_compliant}", 0, 64 - length(local.dce_suffix))}${local.dce_suffix}"
}
