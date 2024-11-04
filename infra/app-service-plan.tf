

module "app-service-plan" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/appservice-plan"

  region                       = var.region
  resource_group_name          = module.application-rg.rg_name
  environment                  = var.environment
  app_service_environment_id   = null
  app_service_plan_os_type     = "Linux"
  app_service_plan_sku_name    = "B1"
  asp_per_site_scaling_enabled = false
  asp_zone_balancing_enabled   = false
  app_service_plan_name        = "ResumeApp"
  persistent_tags              = null

}
