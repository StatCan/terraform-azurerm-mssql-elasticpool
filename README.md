# Terraform for Azure Managed Database MSSQL Elastic Pools

Creates MSSQL Elastic Pools for use with the Azure Managed Database for MSSQL.

## Security Controls

* Adheres to the [CIS Microsoft Azure Foundations Benchmark 1.3.0](https://docs.microsoft.com/en-us/azure/governance/policy/samples/cis-azure-1-3-0) for Database Services.

## Dependencies

* Terraform v0.14.x +
* Terraform AzureRM Provider 2.5 +

## Relationships

* [MSSQL](https://github.com/canada-ca-terraform-modules/terraform-azurerm-mssql)
* [MSSQL Database](https://github.com/canada-ca-terraform-modules/terraform-azurerm-mssql-database)
* [MSSQL Elasticpool](https://github.com/canada-ca-terraform-modules/terraform-azurerm-mssql-elasticpool)
* [MSSQL Server](https://github.com/canada-ca-terraform-modules/terraform-azurerm-mssql-server)

## Usage

Examples for this module along with various configurations can be found in the [examples/](examples/) folder.

## Variables

| Name           | Type    | Default           | Required | Description                                                                                                                                                                                                                 |
|----------------|---------|-------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| name           | string  | n/a               | yes      | The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.                                                                                                          |
| location       | string  | `"canadacentral"` | no       | The Azure region where the elasticpool will be created.                                                                                                                                                                     |
| resource_group | string  | n/a               | yes      | The name of the resource group in which the elasticpool will be created.                                                                                                                                                    |
| server_name    | string  | n/a               | yes      | The name of the Azure SQL Server in which the elasticpool will be created.                                                                                                                                                  |
| max_size_gb    | decimal | n/a               | no       | The max data size of the elastic pool in gigabytes. Conflicts with max_size_bytes.                                                                                                                                          |
| max_size_bytes | decimal | n/a               | no       | The max data size of the elastic pool in bytes. Conflicts with max_size_gb.                                                                                                                                                 |
| zone_redundant | boolean | `"false"`         | no       | Whether or not this elastic pool is zone redundant. tier needs to be Premium for DTU based or BusinessCritical for vCore based sku.                                                                                         |
| skuname        | string  | n/a               | yes      | Specifies the SKU Name for this Elasticpool. The name of the SKU, will be either vCore based tier + family pattern (e.g. GP_Gen4, BC_Gen5) or the DTU based BasicPool, StandardPool, or PremiumPool pattern.                |
| tier           | string  | n/a               | no       | The tier of the particular SKU. Possible values are GeneralPurpose, BusinessCritical, Basic, Standard, or Premium. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based. |
| family         | string  | n/a               | no       | The family of hardware Gen4 or Gen5.                                                                                                                                                                                        |
| capacity       | int     | n/a               | yes      | The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: vCore-based or DTU-based.                                                    |
| min_capacity   | int     | n/a               | yes      | The minimum capacity all databases are guaranteed.                                                                                                                                                                          |
| max_capacity   | int     | n/a               | yes      | The maximum capacity all databases are guaranteed.                                                                                                                                                                          |

## History

| Date     | Release    | Change                                |
|----------|------------|---------------------------------------|
| 20210509 | 20210509.1 | The v1.0.0 relase of Terraform module |
