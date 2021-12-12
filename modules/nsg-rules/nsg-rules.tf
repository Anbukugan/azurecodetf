# Source code for creating configured nsg rules for NSG
resource "azurerm_network_security_rule" "predefined_rules_web" {
  count                       = length(var.nsg_rules)
  name                        = var.nsg_rules[count.index]
  priority                    = element(var.rules[var.nsg_rules[count.index]], 0)
  direction                   = element(var.rules[var.nsg_rules[count.index]], 1)
  access                      = element(var.rules[var.nsg_rules[count.index]], 2)
  protocol                    = element(var.rules[var.nsg_rules[count.index]], 3)
  source_port_range           = element(var.rules[var.nsg_rules[count.index]], 4)
  destination_port_range      = element(var.rules[var.nsg_rules[count.index]], 5)
  description                 = element(var.rules[var.nsg_rules[count.index]], 6)
  source_address_prefix       = element(var.rules[var.nsg_rules[count.index]], 7)
  destination_address_prefix  = element(var.rules[var.nsg_rules[count.index]], 8) 
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.nsg_name
}
