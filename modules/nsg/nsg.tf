# Source code for Creating network security group
resource "azurerm_network_security_group" "networksg" {
  count                       =  var.nsg_enable  == 1 ? length(var.nsg_name) : 0
  name                        =  lower("nsg-${var.environment}-${var.nsg_name[count.index]}")
  location                    =  var.region
  resource_group_name         =  var.resource_group_name
  tags                        =  var.tagvalue
}