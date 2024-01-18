resource "azurerm_lb" "Abhishek" {
  name                = var.lb
  location            = data.azurerm_resource_group.Singh.location
  resource_group_name = data.azurerm_resource_group.Singh.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "LB_PIP"
    public_ip_address_id = data.azurerm_public_ip.Singh.id
  }
}