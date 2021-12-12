#Returns the output of subnet id
output "subnet_id" {
  value = azurerm_subnet_network_security_group_association.networksgassociation.*.id
}

