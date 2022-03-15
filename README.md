[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license] [![Registry][registry-image]][registry]

# terraform-snowflake-target

A Terraform module for configuring a base Snowflake Target integration for use with Snowplow systems.

## Usage

### Applying module directly

1. Fill variables in [terraform.tmpl.tfvars](terraform.tmpl.tfvars) and copy it to `terraform.tfvars`.
2. Using environment variables for authentication as [described in here][snowflake-env-vars]. Fill the template
   in [snowflake_provider_vars.sh](snowflake_provider_vars.sh) and run
   `source ./snowflake_provider_vars.sh` to set up your local environment.
3. Run `terraform init`
4. Run `terraform apply`

### Using the module from another module

Pass authentication parameters directly to Snowflake provider.

```hcl
provider "snowflake" {
  username         = "my_user"
  account          = "my_account"
  region           = "us-west-2"
  role             = "ACCOUNTADMIN"
  private_key_path = "/path/to/private/key"
}

module "snowflake_setup" {
  source = "snowplow-devops/snowflake-loader-setup/aws"
   
  name                      = "snowplow"
  snowflake_loader_password = "exampleP@ssword1"
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.25.32 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_database.loader](https://registry.terraform.io/providers/chanzuckerberg/snowflake/0.25.32/docs/resources/database) | resource |
| [snowflake_file_format.enriched](https://registry.terraform.io/providers/chanzuckerberg/snowflake/0.25.32/docs/resources/file_format) | resource |
| [snowflake_schema.atomic](https://registry.terraform.io/providers/chanzuckerberg/snowflake/0.25.32/docs/resources/schema) | resource |
| [snowflake_table.events](https://registry.terraform.io/providers/chanzuckerberg/snowflake/0.25.32/docs/resources/table) | resource |
| [snowflake_user.loader](https://registry.terraform.io/providers/chanzuckerberg/snowflake/0.25.32/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | A name which will be prepended to the created resources | `string` | n/a | yes |
| <a name="input_snowflake_password"></a> [snowflake\_password](#input\_snowflake\_password) | The password to use to connect to the database | `string` | n/a | yes |
| <a name="input_is_create_database"></a> [is\_create\_database](#input\_is\_create\_database) | Should database be created. Set to false, to use an existing one | `bool` | `true` | no |
| <a name="input_override_snowflake_db_name"></a> [override\_snowflake\_db\_name](#input\_override\_snowflake\_db\_name) | Override database name. If not set it will be defaulted to uppercase var.name with "\_DATABASE" suffix | `string` | `""` | no |
| <a name="input_snowflake_file_format_name"></a> [snowflake\_file\_format\_name](#input\_snowflake\_file\_format\_name) | Name of the Snowflake file format which is used by stage | `string` | `"SNOWPLOW_ENRICHED_JSON"` | no |
| <a name="input_snowflake_schema"></a> [snowflake\_schema](#input\_snowflake\_schema) | Schema name for snowplow data. Defaults to ATOMIC. | `string` | `"ATOMIC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_snowflake_database"></a> [snowflake\_database](#output\_snowflake\_database) | Snowflake database name |
| <a name="output_snowflake_event_table"></a> [snowflake\_event\_table](#output\_snowflake\_event\_table) | Snowflake event table name |
| <a name="output_snowflake_file_format"></a> [snowflake\_file\_format](#output\_snowflake\_file\_format) | Snowflake file format |
| <a name="output_snowflake_password"></a> [snowflake\_password](#output\_snowflake\_password) | Password for snowflake\_user |
| <a name="output_snowflake_schema"></a> [snowflake\_schema](#output\_snowflake\_schema) | Snowflake schema name |
| <a name="output_snowflake_user"></a> [snowflake\_user](#output\_snowflake\_user) | Snowflake username |


# Copyright and license

The Terraform Snowflake Target project is Copyright 2022-2022 Snowplow Analytics Ltd.

Licensed under the [Apache License, Version 2.0][license] (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-snowflake-target/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-snowflake-target

[ci]: https://github.com/snowplow-devops/terraform-snowflake-target/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-snowflake-target/workflows/ci/badge.svg

[license]: https://www.apache.org/licenses/LICENSE-2.0
[license-image]: https://img.shields.io/badge/license-Apache--2-blue.svg?style=flat

[registry]: https://registry.terraform.io/modules/snowplow-devops/target/snowflake/latest
[registry-image]: https://img.shields.io/static/v1?label=Terraform&message=Registry&color=7B42BC&logo=terraform
