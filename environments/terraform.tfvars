resource_groups = {
  "rg1" = {
    name     = "rg1"
    location = "Central India"
    managed_by = "team-a"
    tags = {
      environment = "production"
      project     = "alpha"
    }
  }
}
storage_accounts = {
  "storageaccount1" = {
    name                     = "storageaccount1"
    resource_group_name      = "rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }

 "storageaccount2" = {
    name                     = "storageaccount2"
    resource_group_name      = "rg2"
    location                 = "West US"
    account_tier             = "Premium"
    account_replication_type = "LRS"
  } }

vnet = {
  vnet1 = {
    name                = "VNet1"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "rg1"
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

public_ip = {
    "public_ip_1" = {
        name                = "publicip1"
        location            = "Central India"
        resource_group_name = "rg1"
        allocation_method   = "Static"
        sku                 = "Standard"
    }
    "public_ip_2" = {
        name                = "publicip2"
        location            = "Central India"
        resource_group_name = "rg1"
        allocation_method   = "Static"
        sku                 = "Standard"
    }}

vms = {
  "vm1" = {
    nic_name            = "nic_vm1"
    name                = "vm1"
    resource_group_name = "rg1"
    location            = "Central India"
    public_ip_name      = "publicip1"
    vnet_name           = "vnet1"
    subnet_name         = "frontend_subnet"
    vm_size             = "Standard_D2s_v3"
    admin_username         = "adminuser1"
    admin_password         = "P@ssword1234!"
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
} 

  "vm2" = {
    nic_name            = "nic_vm2"
    name                = "vm2"
    resource_group_name = "rg1"
    location            = "Central India"
    public_ip_name      = "publicip2"
    vnet_name           = "vnet1"
    subnet_name         = "backend_subnet"
    vm_size             = "Standard_D2s_v3"
    admin_username         = "adminuser2"
    admin_password         = "P@ssword1234!"
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
}
}
