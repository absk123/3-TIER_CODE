net = "Virtual_Network"

ip = ["10.10.0.0/16"]

snet = {
  "snet1" ={
    name           = "FronEnd_Subnet"
    address_prefix = "10.10.2.0/24"
  },
  "snet2" ={
    name           = "BackEnd_Subnet"
    address_prefix = "10.10.4.0/24"
  },
  "snet3" ={
    name           = "AzureBastionSubnet"
    address_prefix = "10.10.1.0/26"
  }
}