<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.20, < 2.0 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | >=1.19.0, < 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | >=1.19.0, < 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_dashboard.this](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_file_dashboard"></a> [file\_dashboard](#input\_file\_dashboard) | JSON file to Grafana dashboard | `string` | n/a | yes |
| <a name="input_folder"></a> [folder](#input\_folder) | ID folder to save the dashboard | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Dlm name. If provided, the tag name is created with this name instead of generating the name from the context | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_enabled"></a> [enabled](#output\_enabled) | Enabled property of module |
| <a name="output_id"></a> [id](#output\_id) | Grafana dashboard ID |
| <a name="output_slug"></a> [slug](#output\_slug) | Grafana dashboard SLUG |
| <a name="output_uid"></a> [uid](#output\_uid) | Grafana dashboard UID |
| <a name="output_version"></a> [version](#output\_version) | Grafana dashboard version |
<!-- END_TF_DOCS -->