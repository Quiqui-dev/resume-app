

module "networking-rg" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/resource-group"

  region              = var.region
  platform_name       = var.platform_name
  service_name        = "Networking"
  environment         = var.environment
  environment_version = 001
  persistent_tags     = null
}

module "application-rg" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/resource-group"

  region              = var.region
  platform_name       = var.platform_name
  service_name        = "Application"
  environment         = var.environment
  environment_version = 001
  persistent_tags     = null
}
