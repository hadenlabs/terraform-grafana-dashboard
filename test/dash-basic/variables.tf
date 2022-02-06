variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "file_dashboard" {
  description = "JSON file to Grafana dashboard"
  type        = string
}

variable "folder" {
  description = "ID folder to save the dashboard"
  type        = number
  default     = 0
}
