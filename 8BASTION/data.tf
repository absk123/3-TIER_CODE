data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_public_ip" "Singh" {
  name                = "Bastion_IP"
  resource_group_name = data.azurerm_resource_group.Singh.name
}

data "azurerm_subnet" "Singh" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "Virtual_Network"
  resource_group_name  = data.azurerm_resource_group.Singh.name
}