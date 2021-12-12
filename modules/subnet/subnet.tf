# Source code for Creating the Subnets 
resource "azurerm_subnet" "subnet" {
  count                     = var.subnet_count
  name                      = var.subnet_names[count.index] == "GatewaySubnet" ? "GatewaySubnet" : lower("subnet-${var.environment}-${var.subnet_names[count.index]}")
  virtual_network_name      = var.vnet_name
  resource_group_name       = var.resource_group_name
  address_prefixes          = [var.subnet_range[count.index]]
  service_endpoints         = var.service_endpoints_enable == 1 && var.service[count.index] == 1 ? var.service_endpoints : [""]
  #service_endpoints         = [var.service_endpoints_enable[count.index] == "1" ? var.service_endpoints[count.index] : [""]]
}