variable "vms" {
  type = map(object({
    nic_name           = string
    location           = string
    subnet_name        = string
    vnet_name          = string
    public_ip_name     = string
    vm_size            = string
    name               = string
    admin_username         = string
    admin_password         = string
    resource_group_name = string  
    os_disk =object({
      caching               = string
      storage_account_type  = string
    })
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
}
    )
  )       
  description = "Map of Virtual Machines to create"   
  default = {}
}

