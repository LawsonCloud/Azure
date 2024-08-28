module "static_web_app" {
  source              = "./modules/static_web_app"
  location            = var.location
  resource_type       = var.resource_type
  resource_group_name = "rg-${var.location}-${var.resource_type}"
}



