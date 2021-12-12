# Variable declaration for the subnet count to be created
variable subnet_count {

}


# Variable declaration for the Virtual network name
variable vnet_name {
  type = string
}


# Variable declaration for the subnet names
variable subnet_names {
  type=list
}


# Variable declaration for the  Subnet's ranges
variable subnet_range {
  type=list
}


# Variable declaration for the resource group name of subnets
variable resource_group_name {

}

# Variable declaration for the service endpoints enable/disable flag
variable service_endpoints_enable {
  default = 0
}

# Variable declaration for the service endpoint 
variable service_endpoints {
  type = list
  default = [""] 
  
}


# Variable declaration for the service

variable service {
  
  default = [0,0,1]
}

# Variable declaration for the Environment to be added
variable environment {
  
}