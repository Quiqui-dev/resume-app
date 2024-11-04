

module "app-service" {
  source = "github.com/Quiqui-dev/terraform_modules/Azure/linux-web-app"

  resource_group_name = module.application-rg.rg_name
  platform_name       = var.platform_name
  environment         = var.environment
  region              = var.region

  app_service_plan_id = module.app-service-plan.asp_id

  web_app_name_suffix = "SPA"

  site_config     = {}
  app_settings    = null
  persistent_tags = null

}
