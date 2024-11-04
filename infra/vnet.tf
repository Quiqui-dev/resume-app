

module "vnet" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/virtual_network"

  region              = var.region
  environment         = var.environment
  platform_name       = var.platform_name
  resource_group_name = module.networking-rg.name
  address_space       = ["10.0.0.0/16"]
  subnets             = ["10.0.0.0/24", "10.0.1.0/24"]
  persistent_tags     = null

}
