# Returns the Virtual Machine ID
output virtual_machine_id {
  value = azurerm_linux_virtual_machine.virtual_machine.*.id
}


