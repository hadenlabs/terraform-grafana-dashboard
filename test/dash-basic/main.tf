module "main" {
  source         = "../.."
  enabled        = var.enabled
  file_dashboard = var.file_dashboard
  folder         = var.folder
}
