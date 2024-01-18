resource "azurerm_bastion_host" "Abhishek" {
  name                = var.bs
  location            = data.azurerm_resource_group.Singh.location
  resource_group_name = data.azurerm_resource_group.Singh.name

  ip_configuration {
    name                 = "Bastion_IP"
    subnet_id            = data.azurerm_subnet.Singh.id
    public_ip_address_id = data.azurerm_public_ip.Singh.id
  }
}