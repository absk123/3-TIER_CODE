resource "azurerm_virtual_network" "Abhishek" {
  name                = var.net
  location            = data.azurerm_resource_group.Singh.location
  resource_group_name = data.azurerm_resource_group.Singh.name
  address_space       = var.ip

  dynamic "subnet" {
    for_each = var.snet
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }
}

