terraform {
  required_version = ">= 0.12.20, < 2.0"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">=1.19.0, < 2.0"
    }
  }
}
