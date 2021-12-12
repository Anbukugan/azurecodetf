#Resource Creation of NIC for Tier 2 & 3
resource "azurerm_network_interface" "nic" {
  count                             = var.nic_enable == 1 ? length(var.nic_name) : 0
  name                              = lower("nic-${var.environment}-${var.nic_name[count.index]}")
  location                          = var.region
  resource_group_name               = var.resource_group_name
  ip_configuration {
      name                          = var.ip_config_name[count.index]
      subnet_id                     = var.subnet_id[count.index]
      public_ip_address_id          = var.nic_public_ip_address_id[count.index] 
      private_ip_address_allocation = var.ip_allocation_method[count.index]
     }
  tags                              = var.tagvalue
  }

