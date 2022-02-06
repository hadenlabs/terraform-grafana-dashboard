locals {
  input = {
    name           = var.name
    namespace      = var.namespace
    stage          = var.stage
    enabled        = var.enabled
    file_dashboard = var.file_dashboard
    folder         = var.folder
  }
}

locals {
  generated = {
    name           = local.input.name
    namespace      = local.input.namespace
    stage          = local.input.stage
    enabled        = local.input.enabled
    file_dashboard = local.input.file_dashboard
    folder         = local.input.folder
  }
}

locals {
  outputs = {
    name           = local.generated.name
    namespace      = local.generated.namespace
    stage          = local.generated.stage
    enabled        = local.generated.enabled
    file_dashboard = local.generated.file_dashboard
    folder         = local.generated.folder
  }
}

resource "grafana_dashboard" "this" {
  count       = local.outputs.enabled ? 1 : 0
  config_json = file(local.output.file_dashboard)
  folder      = local.outputs.folder == 0 ? null : local.outputs.folder
}
