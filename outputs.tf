output "enabled" {
  description = "Enabled property of module"
  value       = local.outputs.enabled
}

output "id" {
  description = "Grafana dashboard ID"
  value       = local.outputs.enabled ? join("", grafana_dashboard.this.*.id) : ""
}

output "uid" {
  description = "Grafana dashboard UID"
  value       = local.outputs.enabled ? join("", grafana_dashboard.this.*.uid) : ""
}

output "version" {
  description = "Grafana dashboard version"
  value       = local.outputs.enabled ? join("", grafana_dashboard.this.*.version) : ""
}