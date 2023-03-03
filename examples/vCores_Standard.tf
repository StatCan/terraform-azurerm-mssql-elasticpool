// See https://learn.microsoft.com/en-us/azure/azure-sql/database/service-tiers-dtu?view=azuresql#elastic-pool-limits for more
module "elasticpool" {
  source = "git::https://github.com/canada-ca-terraform-modules/terraform-azurerm-mssql-elasticpool.git?ref=v1.0.2"
  name                = "elasticpoolname"
  location            = "canadacentral"
  resource_group_name = "hosting-sql-rg"
  server_name         = "existingservername"
  sku_name            = "GP_4"
  tier                = "Basic"
  capacity            = 4

  #OPTIONAL PARAMETERS
  family              = "Gen4"
  max_size_gb         = 756
  # max_size_gb conflicts with max_size_bytes
  #max_size_bytes      = 811748818944
  zone_redundant      = "BusinessCritical"
  min_capacity        = 0.25 
  max_capacity        = 4
  tags                = {"tier" = "k8s"}
}