rg1 = {
  rg11 = {
    name     = "rg-humana"
    location = "central india"
  }
}

vnet1 = {
  vnet11 = {
    name                = "vnet-humana"
    address_space       = ["10.12.0.0/16"]
    location            = "central india"
    resource_group_name = "rg-humana"
  }
}

subnet1 = {
  subnet11 = {
    name                 = "subnet-humana"
    address_prefixes     = ["10.12.1.0/24"]
    virtual_network_name = "vnet-humana"
    resource_group_name  = "rg-humana"
  }
}

pip1 = {
  pip11 = {
    name                = "pip-humana"
    allocation_method   = "Static"
    location            = "central india"
    resource_group_name = "rg-humana"
  }
}

nsg1 = {
  nsg11 = {
    name                       = "nsg-humana"
    location                   = "central india"
    resource_group_name        = "rg-humana"
    nsg_security_rule_name     = "nsg-rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "10.12.1.0/24"
  }
}

vm1 = {
  vm11 = {
    nic_name               = "nic-humana"
    vm_location            = "central india"
    vm_resource_group_name = "rg-humana"
    vm_name                = "vm-humana"
    admin_username         = "shashankadmin"
    admin_password         = "shashank@123"
    pip_name               = "pip-humana"
    subnet_name            = "subnet-humana"
    vnet_name              = "vnet-humana"
    nsg_name               = "nsg-humana"
  }
}