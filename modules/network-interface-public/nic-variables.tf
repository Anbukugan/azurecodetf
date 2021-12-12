# Variable Declaration for resource group name
variable resource_group_name { 
}

# Variable Declaration for region
variable region {
}

# Variable Declaration for subnet id
variable subnet_id { 
type = list
}


# Variable Declaration for Public IP ID
variable nic_public_ip_address_id {
  default = ""
}


# Variable Declaration for NIC Name
variable nic_name {
type = list
}


# Variable Declaration for NIC Ip config name
variable ip_config_name { 
type = list
}


# Variable Declaration for Ip allocation type
variable ip_allocation_method {
  default = []
type = list
}

# Variable Declaration for Tag Value
variable tagvalue {
  type = map
}

# Variable Declaration for environment
variable environment {
}

# Variable Declaration for NIC enable
variable nic_enable {
  
}

# Variable Declaration for NIC Type
variable nic_type {
  
}




