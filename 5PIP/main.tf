resource "azurerm_public_ip" "Abhishek" {
  for_each            = toset(var.ip)
  name                = each.value
  resource_group_name = data.azurerm_resource_group.Singh.name
  location            = data.azurerm_resource_group.Singh.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

