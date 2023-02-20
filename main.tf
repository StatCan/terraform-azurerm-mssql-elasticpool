resource "azurerm_mssql_elasticpool" "elasticpool" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.server_name

  edition             = var.edition
  dtu                 = var.capacity
  db_dtu_min          = var.min_capacity
  db_dtu_max          = var.max_capacity
  pool_size           = var.max_size_gb
}
