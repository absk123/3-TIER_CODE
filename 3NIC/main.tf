resource "azurerm_network_interface" "Abhishek" {
  for_each = var.ni
  name                = each.value.name
  location            = data.azurerm_resource_group.Singh.location
  resource_group_name = data.azurerm_resource_group.Singh.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.Singh[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
