resource "azurerm_mssql_elasticpool" "elasticpool" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.server_name
  max_size_gb         = var.max_size_gb
  max_size_bytes      = var.max_size_bytes
  zone_redundant      = var.zone_redundant

  sku {
    name     = var.sku_name
    tier     = var.tier
    family   = var.family
    capacity = var.capacity
  }

  per_database_settings {
    min_capacity = var.min_capacity
    max_capacity = var.max_capacity
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}