resource "snowflake_user" "loader" {
  name                 = local.snowflake_user
  password             = var.snowflake_password
  must_change_password = false
}
