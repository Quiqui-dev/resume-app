

module "networking-rg" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/resource-group"

  region              = var.region
  platform_name       = "Resume"
  service_name        = "Networking"
  environment         = var.environment
  environment_version = 001
}

module "application-rg" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/resource-group"

  region              = var.region
  platform_name       = "Resume"
  service_name        = "Application"
  environment         = var.environment
  environment_version = 001
}
