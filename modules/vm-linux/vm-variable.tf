# Variable Declaration for Resource group name
variable resource_group_name {
  default = "rg-ce-application"
}

# Variable Declaration for Region
variable region {
  
}

# Variable Declaration for Virtual Machine Enable
variable vm_enable {
  default = 1
}
# Variable declaration for Virtul machine disk attachment Enable
variable vm_data_disk_enable {
 default = 1
}
# Variable Declaration for Virtual Machine Name
variable vm_name {
  type = list
}


# Variable Declaration for Virtual Machine Size
variable vm_size {
  type = list
}


# Variable Declaration for Virtual Machine OS Disk Name
variable vm_os_disk_name {
  type = list
}

# Variable Declaration for Environment
variable environment {

}

# Variable Declaration for OS Caching
variable caching {
  type = list  
}


# Variable Declaration for os disk storage account Type
variable storage_account_type {
  type = list
}


# Variable Declaration for Admin User Name
variable admin_username {
  type = list
}



# Variable Declaration for Password Authentication
variable disable_password_authentication {
  type = list
}

# Variable Declaration for Tag Value
variable tagvalue {
  type = map
}

# Variable Declaration for NIC's id
variable nic_id {

}


# Variable declaration for File name 
variable key_file_name {
  type= list
  default = []
}
# Variable declaration for image publisher
variable publisher {
type = list
}
# Variable declaration for image offer
variable offer {
  type = list
}
# Variable declaration for image sku
variable sku {
  type = list
}
# Variable declaration for image version
variable image_version {
  type = list
}
