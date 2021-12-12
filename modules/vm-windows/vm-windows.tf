# Resource creation for virtual machine
resource "azurerm_windows_virtual_machine" "virtual_machine" {
  count                 = var.vm_enable == 1 ? length(var.vm_name) : 0
  name                  = lower("vm-${var.environment}-${var.vm_name[count.index]}")
  network_interface_ids = [var.nic_id]
  resource_group_name   = var.resource_group_name
  location              = var.region
  size                  = var.vm_size[count.index]
  
  source_image_reference {
    publisher = var.publisher[count.index]
    offer     = var.offer[count.index]
    sku       = var.sku[count.index]
    version   = var.image_version[count.index]
  }
  os_disk {
    name                  = var.vm_os_disk_name[count.index]
    caching               = var.os_caching[count.index]
    storage_account_type  = var.storage_account_type[count.index]
  }
  
  admin_username    = var.admin_username[count.index]
  admin_password    = var.admin_password[count.index]
  
  
  tags                = var.tagvalue
}
