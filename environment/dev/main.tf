module "rg" {
  source = "../../child_modules/azurerm_resource_group"
  rg1    = var.rg1
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_modules/azurerm_virtual_network"
  vnet1      = var.vnet1
}

module "subnet" {
  depends_on = [module.rg, module.vnet]
  source     = "../../child_modules/azurerm_subnet"
  subnet1    = var.subnet1
}

module "pip" {
  depends_on = [module.rg]
  source     = "../../child_modules/azurerm_public_ip"
  pip1       = var.pip1
}

module "nsg" {
  depends_on = [module.rg]
  source     = "../../child_modules/azurerm_network_security_group"
  nsg1       = var.nsg1
}

module "vm" {
  depends_on = [module.rg, module.vnet, module.subnet, module.pip, module.nsg]
  source     = "../../child_modules/azurerm_linux_virtual_machine"
  vm1        = var.vm1
}
