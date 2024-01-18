resource "azurerm_linux_virtual_machine" "Abhishek" {
  for_each                        = var.vms
  name                            = each.value.name
  resource_group_name             = data.azurerm_resource_group.Singh.name
  location                        = data.azurerm_resource_group.Singh.location
  size                            = each.value.size
  admin_username                  = data.azurerm_key_vault_secret.Singh.value
  admin_password                  = data.azurerm_key_vault_secret.Singh1.value
  disable_password_authentication = false
  network_interface_ids           = [data.azurerm_network_interface.Singh[each.key].id]

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}