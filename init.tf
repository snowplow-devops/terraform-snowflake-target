locals {
  snowflake_full_file_format_name = "${snowflake_file_format.enriched.database}.${snowflake_file_format.enriched.schema}.${snowflake_file_format.enriched.name}"
  database                        = var.is_create_database ? snowflake_database.loader[0].name : local.db_name
}

resource "snowflake_database" "loader" {
  count = var.is_create_database ? 1 : 0

  lifecycle {
    prevent_destroy = true
  }

  name = local.db_name
}

resource "snowflake_schema" "atomic" {
  lifecycle {
    prevent_destroy = true
  }

  database = local.database
  name     = var.snowflake_schema
}

resource "snowflake_file_format" "enriched" {
  name             = upper(var.snowflake_file_format_name)
  database         = local.database
  schema           = snowflake_schema.atomic.name
  format_type      = "JSON"
  compression      = "AUTO"
  binary_format    = "HEX"
  date_format      = "AUTO"
  time_format      = "AUTO"
  timestamp_format = "YYYY-MM-DD HH24:MI:SS.FF"
}
