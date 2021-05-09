variable "name" {
  description = "(Required) The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server."
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "server_name" {
  description = "(Required) The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created."
}

variable "max_size_gb" {
  description = "(Optional) The max data size of the elastic pool in gigabytes. Conflicts with max_size_bytes."
  default     = null
}

variable "max_size_bytes" {
  description = "(Optional) The max data size of the elastic pool in bytes. Conflicts with max_size_gb."
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = null
}

variable "zone_redundant" {
  description = "(Optional) Whether or not this elastic pool is zone redundant. tier needs to be Premium for DTU based or BusinessCritical for vCore based sku. Defaults to false."
  default     = null
}

# SKU

variable "skuname" {
  description = "(Required) Specifies the SKU Name for this Elasticpool. The name of the SKU, will be either vCore based tier + family pattern (e.g. GP_Gen4, BC_Gen5) or the DTU based BasicPool, StandardPool, or PremiumPool pattern."
}

variable "capacity" {
  description = "(Required) The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based."
}

variable "tier" {
  description = "(Required) The tier of the particular SKU. Possible values are GeneralPurpose, BusinessCritical, Basic, Standard, or Premium. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based."
}

variable "family" {
  description = "(Optional) The family of hardware Gen4 or Gen5."
  default     = null
}

# Database Settings

variable "min_capacity" {
  description = "(Required) The minimum capacity all databases are guaranteed."
}

variable "max_capacity" {
  description = "(Required) The maximum capacity any one database can consume."
}
