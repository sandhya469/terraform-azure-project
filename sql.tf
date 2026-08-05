resource "azurerm_mssql_server" "sqlserver" {

  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location

  version                      = "12.0"

  administrator_login          = var.sql_admin
  administrator_login_password = var.sql_password
}

resource "azurerm_mssql_database" "database" {

  name      = var.database_name
  server_id = azurerm_mssql_server.sqlserver.id

  sku_name = "Basic"
}