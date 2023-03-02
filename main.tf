resource "azurerm_mssql_elasticpool" "elasticpool" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  
  server_name         = var.server_name
  edition             = var.edition
  dtu                 = var.pool_dtu
  db_dtu_min          = var.db_dtu_min
  db_dtu_max          = var.db_dtu_max
  pool_size           = var.pool_size

  tags = var.tags
}
