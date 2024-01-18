data "azurerm_resource_group" "Singh" {
  name = "Resource_Group"
}

data "azurerm_key_vault" "Singh" {
  name                = "AbhiishekKeyVault"
  resource_group_name = data.azurerm_resource_group.Singh.name
}

data "azurerm_key_vault_secret" "Singh" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.Singh.id
}
data "azurerm_key_vault_secret" "Singh1" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.Singh.id
}