data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_lb" "Singh" {
  name                = "LoadBalancer"
  resource_group_name = data.azurerm_resource_group.Singh.name
}

data "azurerm_virtual_machine" "Singh" {
  for_each            = var.data
  name                = each.value.vmname
  resource_group_name = data.azurerm_resource_group.Singh.name
}

data "azurerm_virtual_network" "Singh" {
  name                = "Virtual_Network"
  resource_group_name = data.azurerm_resource_group.Singh.name
}