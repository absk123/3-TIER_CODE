data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_network_interface" "Singh" {
  for_each = var.nsg
  name                = each.value.nicname
  resource_group_name = data.azurerm_resource_group.Singh.name
}