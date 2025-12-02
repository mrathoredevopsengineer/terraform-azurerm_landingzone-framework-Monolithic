vms = {
  "vm1" = {
    nic_name            = "nic_vm1"
    name                = "vm1"
    resource_group_name = "rg1"
    location            = "East US"
    public_ip_name      = "pip_vm1"
    vnet_name           = "vnet1"
    subnet_name         = "frontend"
    vm_size             = "Standard_DS1_v2"
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
    location            = "East US"
    public_ip_name      = "pip_vm1"
    vnet_name           = "vnet1"
    subnet_name         = "backend"
    vm_size             = "Standard_DS1_v2"
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
