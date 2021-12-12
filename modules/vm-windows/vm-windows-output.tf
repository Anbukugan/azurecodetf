# Returns the Virtual Machine ID
output virtual_machine_id {
  value = azurerm_windows_virtual_machine.virtual_machine.*.id
}

# Returns the Virtual Machine ID
output virtual_machine_name {
  value = azurerm_windows_virtual_machine.virtual_machine.*.name
}

