provider "azurerm" {
features{} 
}

# Modules definition for creating resource group
module "resource_group" {
 source                                     = "../modules/resource-group"
 resource_group_name                        =  var.resource_group_name
 region                                     =  var.region
 tagvalue                                   =  var.tagvalue
 environment                                =  var.environment
}




# Module to create Vnet for our project
module "projectvnet" {
  source                                  = "../modules/vnet"
  resource_group_name                     = module.resource_group.resource_group_name
  vnet_enable                             = var.vnet_enable
  region                                  = var.region
  vnet_name                               = var.vnet_name
  vnet_address                            = var.vnet_address
  tagvalue                                = var.tagvalue
  environment                             = var.environment
 }


# Module to create Subnets
module "projectsubnet" {
  source                                  = "../modules/subnet"
  resource_group_name                     = module.resource_group.resource_group_name
  subnet_count                            = var.subnet_count
  vnet_name                               = module.projectvnet.vnet_name[0]
  subnet_names                            = var.subnet_names
  subnet_range                            = var.subnet_range
  environment                             = var.environment
  service_endpoints                       = var.service_endpoints
  service_endpoints_enable                 = var.service_endpoints_enable
 }


# Module to create NSG for our project
module "projectnsg" {
  source                                  = "../modules/nsg"
  nsg_enable                              = var.nsg_enable
  nsg_name                                = var.nsg_name
  region                                  = var.region
  resource_group_name                     = module.resource_group.resource_group_name
  environment                             = var.environment
  tagvalue                                = var.tagvalue
  }

# Module to create NSG rules for our project
module "projectnsg1_rules" {
  source                                  = "../modules/nsg-rules"
  nsg_name                                = module.projectnsg.nsg_names[0]
  resource_group_name                     = module.resource_group.resource_group_name
  nsg_rules                               = var.nsg_tier1_rules
  }

# Module to create NSG rules for our project
module "projectnsg2_rules" {
  source                                  = "../modules/nsg-rules"
  nsg_name                                = module.projectnsg.nsg_names[1]
  resource_group_name                     = module.resource_group.resource_group_name
  nsg_rules                               = var.nsg_tier2_rules
  }

 

# Module for Subnet Associations with NSG's
module "nsg_association_subnet_Tiers" {
    source                                = "../modules/nsg-association"
    nsg_enable                            = var.nsg_enable
    subnet_count                          = var.subnet_count
    subnet_id                             = module.projectsubnet.subnet_id
    nsg_id                                = module.projectnsg.nsg_id
    
}


# Module to create Routetables
module "projectrt" {
    source                                = "../modules/routetable"
    rt_enable                             = var.rt_enable
    subnet_count                          = var.subnet_count
    rt_name                               = var.rt_name
    resource_group_name                   =  module.resource_group.resource_group_name
    region                                = var.region
    tagvalue                              = var.tagvalue
    environment                           = var.environment
   }


# Module for routatable association with All Tier subnets
module "rt_association_subnet_Tier1" {
    source                                = "../modules/routetable-association"
    rt_enable                             = var.rt_enable
    subnet_count                          = var.subnet_count
    subnet_id                             = module.projectsubnet.subnet_id
    rt_id                                 = module.projectrt.rt_id
    }


# Module to Create Public IP Address
  module "public_ip" {
  source                                  = "../modules/public-ip"
  public_ip_enable                        = var.public_ip_enable
  public_ip_names                         = var.public_ip_names
  allocation                              = var.public_ip_allocation_method
  region                                  = var.region
  resource_group_name                     = module.resource_group.resource_group_name
  tagvalue                                = var.tagvalue
  environment                             = var.environment
  }


# Module to create NIC for web server
module "web_nic" {
  source                             = "../modules/network-interface-public"
  nic_enable                         = var.web_nic_enable
  resource_group_name                = module.resource_group.resource_group_name
  region                             = var.region
  subnet_id                          = [module.projectsubnet.subnet_id[0]]
  ip_allocation_method               = var.ip_allocation_method
  nic_name                           = [var.nic_name[0]]
  nic_type                           = var.web_nic_type
  ip_config_name                     = var.ip_config_name
  environment                        = var.environment
  tagvalue                           = var.tagvalue
  nic_public_ip_address_id           = [module.public_ip.public_ip_address_id[0]]
}


# Module to create NIC for DB
module "db_nic" {
  source                             = "../modules/network-interface-private"
  nic_enable                         = var.db_nic_enable
  resource_group_name                = module.resource_group.resource_group_name
  region                             = var.region
  subnet_id                          = [module.projectsubnet.subnet_id[1]]
  ip_allocation_method               = var.ip_allocation_method
  nic_name                           = [var.nic_name[1]]
  nic_type                           = var.db_nic_type
  ip_config_name                     = var.ip_config_name
  environment                        = var.environment
  tagvalue                           = var.tagvalue
  #nic_public_ip_address_id           = module.public_ip.public_ip_address_id[2]
}

# Module to create web server
module "web" {
  source                             = "../modules/vm-linux"
  vm_enable                          = var.web_vm_enable
  region                             = var.region
  resource_group_name                = module.resource_group.resource_group_name
  nic_id                             = module.web_nic.nic_id[0]
  vm_name                            = var.web_vm_name
  vm_size                            = var.web_vm_size
  publisher                          = var.web_image_publisher
  offer                              = var.web_image_offer
  image_version                      = var.web_image_version
  sku                                = var.web_image_sku
  vm_os_disk_name                    = var.web_vm_os_disk_name
  environment                        = var.environment
  caching                            = var.web_os_caching
  storage_account_type               = var.web_storage_account_type
  admin_username                     = var.web_admin_username
  key_file_name                      = var.web_key_file_name
  tagvalue                           = var.tagvalue
  disable_password_authentication    = var.web_disable_password_authentication
}




# Module to create db server

module "db" {
  source                             = "../modules/vm-linux"
  vm_enable                          = var.db_vm_enable
  region                             = var.region
  resource_group_name                = module.resource_group.resource_group_name
  nic_id                             = module.db_nic.nic_id[0]
  vm_name                            = var.db_vm_name
  vm_size                            = var.db_vm_size
  publisher                          = var.db_image_publisher
  offer                              = var.db_image_offer
  image_version                      = var.db_image_version
  sku                                 = var.db_image_sku
  vm_os_disk_name                    = var.db_vm_os_disk_name
  environment                        = var.environment
  caching                           = var.db_os_caching
  storage_account_type               = var.db_storage_account_type
  admin_username                     = var.db_admin_username
  key_file_name                     = var.db_key_file_name
  tagvalue                           = var.tagvalue
 disable_password_authentication     = var.db_disable_password_authentication
}










