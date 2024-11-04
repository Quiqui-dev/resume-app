

module "vnet" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/virtual_network"

  region              = var.region
  environment         = var.environment
  platform_name       = var.platform_name
  resource_group_name = module.networking-rg.rg_name
  address_space       = ["10.0.0.0/16"]
  subnets             = local.vnet_subnets
  persistent_tags     = null

}
