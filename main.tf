locals {
  module_name    = "snowplow-snowflake-resources"
  module_version = "0.1.0"
  db_name        = var.override_snowflake_database != "" ? var.override_snowflake_database : "${upper(var.name)}_DATABASE"
  snowflake_user = var.override_snowflake_user != "" ? var.override_snowflake_user : "${upper(var.name)}_LOADER_USER"
}
