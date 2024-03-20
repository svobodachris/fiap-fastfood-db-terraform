resource "azurerm_resource_group" "fiap-fastfood-grupo-db-rg" {
  name     = "fiap-fastfood-db-rg"
  location = "brazilsouth"
}

resource "azurerm_cosmosdb_server" "fiap-fastfood-srv" {
  name                = "fiap-fastfood-srv"
  location            = azurerm_resource_group.fiap-fastfood-db-rg.location
  resource_group_name = azurerm_resource_group.fiap-fastfood-db-rg.name
  administrator_login          = var.db_username
  administrator_login_password = var.db_password
  sku_name   = "B_Gen5_1"
  storage_mb = 5120
  version    = "8.0"
  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}
