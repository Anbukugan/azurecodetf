#Returns the output of NIC ID
output "nic_id" {
  value = "${azurerm_network_interface.nic.*.id}"
}

# Returns the output of Private IP address
output "private_ip_address" {
  value = "${azurerm_network_interface.nic.*.private_ip_address}"
}
