locals {
  input = {
    enabled        = var.enabled
    file_dashboard = var.file_dashboard
    folder         = var.folder
  }
}

locals {
  generated = {
    enabled        = local.input.enabled
    file_dashboard = local.input.file_dashboard
    folder         = local.input.folder
  }
}

locals {
  outputs = {
    enabled        = local.generated.enabled
    file_dashboard = local.generated.file_dashboard
    folder         = local.generated.folder
  }
}

resource "grafana_dashboard" "this" {
  count       = local.outputs.enabled ? 1 : 0
  config_json = file(local.outputs.file_dashboard)
  folder      = local.outputs.folder == 0 ? null : local.outputs.folder
}
