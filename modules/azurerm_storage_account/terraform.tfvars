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