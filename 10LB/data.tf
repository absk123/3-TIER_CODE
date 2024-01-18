data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_public_ip" "Singh" {
  name                = "LB_IP"
  resource_group_name = data.azurerm_resource_group.Singh.name
}