terraform {
  required_version = ">= 1.0.0"

  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.32"
    }
  }
}
