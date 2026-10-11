output "app_lookup_app" {
  description = "Map of app values across all app_lookup, keyed the same as var.app_lookup except keys with no app are omitted"
  value       = { for k, v in data.databricks_app.app_lookup : k => v.app if v.app != null && length(v.app) > 0 }
}
output "app_lookup_name" {
  description = "Map of name values across all app_lookup, keyed the same as var.app_lookup except keys with no name are omitted"
  value       = { for k, v in data.databricks_app.app_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_lookup_provider_config" {
  description = "Map of provider_config values across all app_lookup, keyed the same as var.app_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_app.app_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

