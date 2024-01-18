resource "azurerm_lb_backend_address_pool" "Abhishek" {
  loadbalancer_id = data.azurerm_lb.Singh.id
  name            = var.belb
}

resource "azurerm_lb_backend_address_pool_address" "Abhishek" {
  for_each                = var.data
  name                    = each.value.name
  backend_address_pool_id = azurerm_lb_backend_address_pool.Abhishek.id
  virtual_network_id      = data.azurerm_virtual_network.Singh.id
  ip_address              = data.azurerm_virtual_machine.Singh[each.key].private_ip_address
}

resource "azurerm_lb_probe" "Abhishek" {
  loadbalancer_id = data.azurerm_lb.Singh.id
  name            = "http-running-probe"
  port            = 80
}

resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = data.azurerm_lb.Singh.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "LB_PIP"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.Abhishek.id]
  probe_id = azurerm_lb_probe.Abhishek.id
}
