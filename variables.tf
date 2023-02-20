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

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = null
}

variable "edition" {
  description = "(Required) The edition of the elastic pool to be created. Valid values are Basic, Standard, and Premium. Refer to Azure SQL Database Service Tiers for details."
}

# SKU

variable "capacity" {
  description = "(Required) The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based."
}

# Database Settings

variable "min_capacity" {
  description = "(Required) The minimum capacity all databases are guaranteed."
}

variable "max_capacity" {
  description = "(Required) The maximum capacity any one database can consume."
}
