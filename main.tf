data "databricks_app" "app_lookup" {
  for_each = var.app_lookup

  name            = each.value.name
  provider_config = each.value.provider_config
}

