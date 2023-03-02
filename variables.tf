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

variable "edition" {
  description = "(Required) The edition of the elastic pool to be created. Valid values are Basic, Standard, and Premium. Refer to Azure SQL Database Service Tiers for details."
}

variable "pool_dtu" {
  description = "Required) The total shared DTU for the elastic pool. Valid values depend on the edition which has been defined. Refer to Azure SQL Database Service Tiers for valid combinations."
}

variable "db_dtu_min" {
  description = "(Optional) The minimum DTU which will be guaranteed to all databases in the elastic pool to be created."
  default     = null
}

variable "db_dtu_max" {
  description = "(Optional) The maximum DTU which will be guaranteed to all databases in the elastic pool to be created."
  default     = null
}

variable "pool_size" {
  description = "(Optional) The maximum size in MB that all databases in the elastic pool can grow to. The maximum size must be consistent with combination of edition and dtu and the limits documented in Azure SQL Database Service Tiers. If not defined when creating an elastic pool, the value is set to the size implied by edition and dtu."
  default = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = null
}