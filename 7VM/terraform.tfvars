vms = {
  "VM1" = {
    name                 = "FrontEndVM1"
    size                 = "Standard_D1_v2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
    nicname              = "fNIC1"
  },
  "VM2" = {
    name                 = "FrontEndVM2"
    size                 = "Standard_D1_v2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
    nicname              = "FNIC2"
  },
  "VM3" = {
    name                 = "BackEndVM1"
    size                 = "Standard_D1_v2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
    nicname              = "BNIC1"
  }
}