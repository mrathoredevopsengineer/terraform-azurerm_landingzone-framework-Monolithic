vnet = {
  vnet1 = {
    name                = "VNet1"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "AahanaRG"
    subnets = [
  {
      name  = "frontend_subnet"
      address_prefixes     = ["10.0.1.0/24"]
    },

  {
      name  = "backend_subnet"
      address_prefixes     = ["10.0.2.0/24"]
  }
]
  }
}


