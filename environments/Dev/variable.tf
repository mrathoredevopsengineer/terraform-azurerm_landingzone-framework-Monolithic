variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
    managed_by = optional(string)
    tags       = optional(map(string))
  })) 
}

variable "storage_accounts" {
  description = "A map of storage accounts to create"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  })) 
}

variable "vnet" {
    type = map(object({
      name           = string
      address_space  = list(string)
      location       = string
      resource_group_name = string
      subnets = list(object({
        name             = string
        address_prefixes = list(string)
      }))
    }))
}

variable "public_ip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "vms" {
  type = map(object({
    nic_name           = string
    location           = string
    subnet_name        = string
    vnet_name          = string
    public_ip_name     = string
    vm_size            = string
    name               = string
    resource_group_name = string
    admin_username         = string
    admin_password         = string
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

