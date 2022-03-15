module "example" {
  source = "../../"

  # Arguments?
}

output "value" {
  value = module.example.value
}
