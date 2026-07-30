data "azurerm_public_ip" "pip" {
    for_each = var.vm1
  name                = each.value.pip_name
  resource_group_name = each.value.vm_resource_group_name
}

data "azurerm_subnet" "subnet" {
    for_each = var.vm1
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.vm_resource_group_name
}

data "azurerm_network_security_group" "nsg" {
    for_each = var.vm1
  name                = each.value.nsg_name
  resource_group_name = each.value.vm_resource_group_name
}
