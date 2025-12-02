module "resource_groups" {
  source          = "../modules/azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "vnet" {
  depends_on                   = [module.resource_groups]
  source = "../modules/azurerm_networking"
  vnet   = var.vnet
}

module "public_ips" {
  depends_on = [module.resource_groups]
  source = "../modules/azurerm_public_ip"
  public_ip = var.public_ip
}

module "azurerm_compute" {
 depends_on = [module.resource_groups, module.vnet, module.public_ips]
  source = "../modules/azurerm_compute"
  vms    = var.vms
}

module "sql_server" {
  depends_on                   = [module.resource_groups]
  source                       = "../modules/azurerm_sql_db_server"
  sql_server_name              = "inspire-sql-server"
  resource_group_name          = "rg1"
  location                     = "Central India"
  administrator_login          = "admin123"
  administrator_login_password = "Maheshrathore@1991"
}

module "sql_database" {
  depends_on          = [module.resource_groups, module.sql_server]
  source              = "../modules/azurerm_sql_database"
  sql_database_name   = "inspire-sql-database"
  resource_group_name = "rg1"
  sql_server_name     = "inspire-sql-server"

}
