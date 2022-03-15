output "snowflake_user" {
  description = "Snowflake username"
  value       = snowflake_user.loader.name
}

output "snowflake_password" {
  value       = snowflake_user.loader.password
  sensitive   = true
  description = "Password for snowflake_user"
}

output "snowflake_database" {
  description = "Snowflake database name"
  value       = local.database
}

output "snowflake_schema" {
  description = "Snowflake schema name"
  value       = snowflake_schema.atomic.name
}

output "snowflake_file_format" {
  description = "Snowflake file format"
  value       = snowflake_file_format.enriched.name
}

output "snowflake_event_table" {
  description = "Snowflake event table name"
  value       = snowflake_table.events.name
}