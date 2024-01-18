resource "azurerm_network_security_group" "Abhishek" {
  for_each = var.nsg
  name                = each.value.name
  location            = data.azurerm_resource_group.Singh.location
  resource_group_name = data.azurerm_resource_group.Singh.name

  dynamic "security_rule" {
    for_each = var.sr
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}

resource "azurerm_network_interface_security_group_association" "Abhishek" {
  for_each = var.nsg
  network_interface_id      = data.azurerm_network_interface.Singh[each.key].id
  network_security_group_id = azurerm_network_security_group.Abhishek[each.key].id
}