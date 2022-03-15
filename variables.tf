variable "name" {
  description = "A name which will be prepended to the created resources"
  type        = string

  validation {
    condition     = can(length(var.name) == 0)
    error_message = "Name could not be empty."
  }

  validation {
    condition     = !can(regex("-", var.name))
    error_message = "Name could not contain '-'."
  }
}

variable "snowflake_password" {
  description = "The password to use to connect to the database"
  type        = string
  sensitive   = true
}

variable "is_create_database" {
  description = "Should database be created. Set to false, to use an existing one"
  type        = bool
  default     = true
}

variable "override_snowflake_database" {
  description = "Override database name. If not set it will be defaulted to uppercase var.name with \"_DATABASE\" suffix"
  default     = ""
  type        = string
}

variable "override_snowflake_user" {
  description = "Override snowflake user"
  default     = ""
  type        = string
}

variable "snowflake_schema" {
  description = "Schema name for snowplow data. Defaults to ATOMIC."
  default     = "ATOMIC"
  type        = string
}

variable "snowflake_file_format_name" {
  description = "Name of the Snowflake file format which is used by stage"
  default     = "SNOWPLOW_ENRICHED_JSON"
  type        = string
}
