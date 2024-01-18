nsg = {
  NSG1 = {
    name = "Security_Gaurd1"
    nicname = "fNIC1"
  },
  NSG2 = {
    name = "Security_Gaurd2"
    nicname = "FNIC2"
  },
  NSG3 = {
    name = "Security_Gaurd"
    nicname = "BNIC1"
  }
}

sr = {
  "SR1" = {
    name                   = "Rule_1"
    priority               = "100"
    source_port_range      = "80"
    destination_port_range = "80"
  },
  "SR2" = {
    name                   = "Rule_2"
    priority               = "110"
    source_port_range      = "22"
    destination_port_range = "22"
  }
}
