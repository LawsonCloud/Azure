module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  subnets             = var.subnets
  location            = var.location
  nw_rg               = var.nw_rg
  tags                = var.tags
}

module "vm" {
  source              = "./modules/vm"
  vnet_name           = module.network.vnet_name
  subnet_name         = var.subnet_name
  subnet_id           = module.network.subnet_ids[var.subnet_name] 
  location            = var.location
  vm_rg               = var.vm_rg
  tags                = var.tags
}

