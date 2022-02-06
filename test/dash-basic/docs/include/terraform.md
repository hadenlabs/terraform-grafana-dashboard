<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.20, < 2.0 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | >=1.19.0, < 2.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_file_dashboard"></a> [file\_dashboard](#input\_file\_dashboard) | JSON file to Grafana dashboard | `string` | n/a | yes |
| <a name="input_folder"></a> [folder](#input\_folder) | ID folder to save the dashboard | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_enabled"></a> [enabled](#output\_enabled) | Enabled property of module |
| <a name="output_id"></a> [id](#output\_id) | Grafana dashboard ID |
| <a name="output_uid"></a> [uid](#output\_uid) | Grafana dashboard UID |
| <a name="output_version"></a> [version](#output\_version) | Grafana dashboard version |
<!-- END_TF_DOCS -->