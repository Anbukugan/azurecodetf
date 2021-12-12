
# Name for environment

environment                              = "ce"


# Parameter for Creating Azure Resources
region                                   = "uksouth"

# Parameter for Create Virtual network and Subnets
vnet_name                                = ["cloud-engg-project1"]
vnet_address                             = ["10.30.0.0/16"]
subnet_names                             = ["tier1","tier2"]
subnet_range                             = ["10.30.0.0/24","10.30.1.0/24"]

# Parameter for Create Network Security Groups
nsg_names                                = ["tier1","tier2"]
nsg_tier1_rules                          = ["Allow_Port80_Inbound","Allow_Port443_Inbound","Deny_Virtualnetwork_Inbounds"]
nsg_tier2_rules                          = ["Deny_Virtualnetwork_Inbound","Allow_Azuremonitor_Outbound","Deny_Internet_Outbound"]


# Parameter for Create Route Table
rt_name                                 = ["tier1","tier2"]



# Parameter for Azure Resources Tags
tagvalue                                 =  {client_segment = "abcd"}  

# Parameter for the Public IP Creation
public_ip_names                          = ["project1"]
public_ip_allocation_method              = "Dynamic"


# Parametrs for Creating Virtual Machine
nic_name                              = ["nic1","nic2"]
web_vm_name                           = ["vm01"]
web_vm_size                           = ["Standard_B1s"]
web_image_publisher                   = ["Canonical"]
web_image_offer                       = ["UbuntuServer"]
web_image_version                     = ["latest"]
web_image_sku                         = ["16.04-LTS"]
web_vm_os_disk_name                   = ["mydisc3"]
web_os_caching                        = ["ReadWrite"]
web_storage_account_type              = ["Standard_LRS"]
web_admin_username                    = ["vm1-admin"]
web_key_file_name                     = ["demo.pub"]
web_disable_password_authentication   = ["true"]

ip_allocation_method              = ["Dynamic"]
web_nic_type                      = ["Public"]
ip_config_name                    = ["ip3"]




# Parametrs for Creating Virtual Machine

db_vm_name                           = ["vm03"]
db_vm_size                           = ["Standard_B1s"]
db_image_publisher                   = ["Canonical"]
db_image_offer                       = ["UbuntuServer"]
db_image_version                     = ["latest"]
db_image_sku                         = ["16.04-LTS"]
db_vm_os_disk_name                   = ["mydisc1"]
db_os_caching                        = ["ReadWrite"]
db_storage_account_type              = ["Standard_LRS"]
db_admin_username                    = ["vm3-admin"]
db_key_file_name                     = ["demo.pub"]
db_disable_password_authentication   = ["true"]
