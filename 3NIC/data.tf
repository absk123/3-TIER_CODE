data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_subnet" "Singh" {
  for_each = var.ni
  name                 = each.value.sname
  virtual_network_name = "Virtual_Network"
  resource_group_name  = data.azurerm_resource_group.Singh.name
}

# data "azurerm_network_security_group" "Singh" {
#   for_each = var.ni
#   name                = each.value.nname
#   resource_group_name = data.azurerm_resource_group.Singh.name
# }