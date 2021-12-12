variable client_secret {
  
}

# Variable Declaration for Resource group name
variable resource_group_name {
  description = "The name of the resource group in which the resources will be created"
  default =  "RG_"
}


# Variable Declaration for Location
variable region {
  description = "The location/region where resources is created. Changing this forces a new resource to be created."
  default = "UK South"
}


# Variable Declaration for Vet name 
variable vnet_name {
  description = "The name of the virtual network where the virtual machines will reside."
  default = ["VNET_CE_Cloud_Engg_Project1"]
  type = list
}


# Variable Declaration for Vnet Address
variable vnet_address {
  description = "The address of the virtual network where the virtual machines will reside."
  type = list
  default = ["10.30.0.0/16"]
}


# Variable Declaration for list of subnet names
variable subnet_names {
  description = "The subnet name of the virtual network where the virtual machines will reside."
  type=list
  default = ["Subnet_CE_Tier1","Subnet_CE_Tier2","Subnet_CE_Tier3","Subnet_CE_ER" ,"Subnet_CE_Management"]
}


# Variable Declaration for list of subnet range
variable subnet_range {
  description = "The subnet id of the virtual network where the virtual machines will reside."
  type=list
  default = ["10.30.0.0/24","10.30.1.0/24","10.30.2.0/24","10.30.3.0/24","10.30.4.0/24"]
}


# Variable Declaration for NSG rules for tier1
variable nsg_tier1_rules {
  description = "The nsg rules for tier1."
  type= list
  default = ["Allow_Port80_Inbound","Allow_Port443_Inbound","Deny_Virtualnetwork_Inbound"]
}


# Variable Declaration for NSG rules for tier2
variable nsg_tier2_rules {
  description = "The nsg rules for tier2."
  type= list
  default = ["Deny_Virtualnetwork_Inbound","Allow_Azuremonitor_Outbound","Deny_Internet_Outbound"]
}



# Variable Declaration for list of nsg names
variable nsg_name {
    description = "The list of NSG names."
    type = list
    default = ["NSG_CE_Tier1","NSG_CE_Tier2","NSG_CE_Tier3"]
}


# Variable Declaration for list of route table names

variable rt_name {
  description = "The route table name list."
  type = list
  default = ["RT_CE_Tier1", "RT_CE_Tier2","RT_CE_Tier3","RT_CE_ER", "RT_CE_Management"]
}




# Variable Declaration for RG Enable
variable rg_enable {
  default = 1
}


# Variable Declaration for Vnet Enable
variable vnet_enable {
  default = 1
}


# Variable Declaration for Subnet count
variable subnet_count {
  default = 2
}


# Variable Declaration for NSG Enable
variable nsg_enable {
  default = 1
}


# Variable Declaration for RT Enable
variable rt_enable {
  default = 1
}



# Variable Declaration for  Tag Value
variable tagvalue {
    description = "The value for the tag"
    type = map
}


# Variable Declaration for Environment
variable environment {
    description = "The environment name to be provided"
  
}


# Variable Declaration for Service Endpoint Enable
variable service_endpoints_enable {
  default = 0
}



# Variable Declaration for service endpoint integration
variable service_endpoints {
  type = list
  default = [""]
}


# Variable Declaration for Virtual Machine Enable
variable web_vm_enable {
 
 default = 1
}

# Variable Declaration for Virtual Machine Name
variable web_vm_name {
  type = list
  default = []
}




# Variable Declaration for Virtual Machine Size
variable web_vm_size {
  type = list
  default = [""]
}


# Variable Declaration for Image Publisher
variable web_image_publisher {
  type = list
  default = [""]
}

# Varable Declaration for Image Offer
variable web_image_offer {
  type = list
  default = [""]
}

# Variablr Declaration for Image Version
variable web_image_version {
  type = list
  default = [""]
}

# Variable Declaration for Image SKU
variable web_image_sku {
  type = list
  default = [""]
}

# Variable Declaration for Virtual Machine OS Disk Name
variable web_vm_os_disk_name {
  type = list
  default = [""]
}


# Variable Declaration for OS Caching
variable web_os_caching {
  type = list
  default = [""]
}



# Variable Declaration for Managed Disk Type
variable web_storage_account_type {
  type = list
  default = [""]
}



# Variable Declaration for Admin User Name
variable web_admin_username {
  type = list
  default = [""]
}

# Variable Declaration for Admin User Name
variable web_key_file_name {
  type = list
  default = [""]
}
# Variable Declaration for Password Authentication
variable web_disable_password_authentication {
  type = list
}


# Variable Declaration for Public IP ID
variable nic_public_ip_address_id {
  type = list
  default = [""]
}


# Variable Declaration for NIC Name
variable nic_name {
  type = list
  default = [""]
}

# Variable Declaration for NIC Ip config name
variable ip_config_name { 
  type = list
  default = [""]
}

# Variable Declaration for Ip allocation type
variable ip_allocation_method {
  type = list
  default = [""]
}


# Variable Declaration for NIC enable
variable web_nic_enable {
 
  default = 1
}



# Variable Declaration for NIC enable
variable db_nic_enable {
 
  default = 1
}




# Variable Declaration for NIC Type
variable web_nic_type {
  type = list
  default = [""]
}



# Variable Declaration for NIC Type
variable db_nic_type {
  type = list
  default = [""]
}

# Variable Declaration for Public IP Enable
variable public_ip_enable {
  description = "The name Public IP enable"
  default = 1
}


# Variable Declaration for Public IP Name
variable public_ip_names {
  description = "The name Public IP Address"
  type =list
  default = [""]
}


# Variable Declaration for Publicc IP Allocation Method
variable public_ip_allocation_method {
  description = "The Public Ip Allocation Method"
  default = ""
}




# Variable Declaration for Virtual Machine Enable
variable db_vm_enable {
 
 default = 1
}

# Variable Declaration for Virtual Machine Name
variable db_vm_name {
  type = list
  default = []
}




# Variable Declaration for Virtual Machine Size
variable db_vm_size {
  type = list
  default = [""]
}


# Variable Declaration for Image Publisher
variable db_image_publisher {
  type = list
  default = [""]
}

# Varable Declaration for Image Offer
variable db_image_offer {
  type = list
  default = [""]
}

# Variablr Declaration for Image Version
variable db_image_version {
  type = list
  default = [""]
}

# Variable Declaration for Image SKU
variable db_image_sku {
  type = list
  default = [""]
}

# Variable Declaration for Virtual Machine OS Disk Name
variable db_vm_os_disk_name {
  type = list
  default = [""]
}


# Variable Declaration for OS Caching
variable db_os_caching {
  type = list
  default = [""]
}



# Variable Declaration for Managed Disk Type
variable db_storage_account_type {
  type = list
  default = [""]
}



# Variable Declaration for Admin User Name
variable db_admin_username {
  type = list
  default = [""]
}

# Variable Declaration for Admin User Name
variable db_key_file_name {
  type = list
  default = [""]
}
# Variable Declaration for Password Authentication
variable db_disable_password_authentication {
  type = list
}