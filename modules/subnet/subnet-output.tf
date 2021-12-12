# Returns the output of the subnet
output vnet_subnets {
  value  = azurerm_subnet.subnet.*.name
}

# Returns the output of the Subnet IDs
output subnet_id {
  value = azurerm_subnet.subnet.*.id
}

# Returns the output of resource group name
output resource_group_name {
  value = azurerm_subnet.subnet.*.resource_group_name
}
