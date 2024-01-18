resource "azurerm_sql_server" "Abhishek" {
  name                         = var.dbs
  resource_group_name          = data.azurerm_resource_group.Singh.name
  location                     = data.azurerm_resource_group.Singh.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.Singh.value
  administrator_login_password = data.azurerm_key_vault_secret.Singh1.value
}

resource "azurerm_sql_database" "Abhishek" {
  name                = var.db
  resource_group_name = data.azurerm_resource_group.Singh.name
  location            = data.azurerm_resource_group.Singh.location
  server_name         = azurerm_sql_server.Abhishek.name
}