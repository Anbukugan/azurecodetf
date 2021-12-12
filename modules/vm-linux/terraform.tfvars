# Name for the environment
environment                              = "ce"

# Parameter for Creating Azure Resources
region                                   = "uksouth"

# Parameter for Azure Resources Tags
tagvalue                                 = {

      client_segment                     = ""
      ito_unit                           = ""
      app_id                             = ""
      component_id                       = ""
      stack_id                           = ""
      execution_fabric                   = ""
      country_instance_located           = ""
      country_instance_served            = ""
      environment_subtype                = ""
      cost_centre                        = ""
      clarity_id                         = ""
}  


# Parametrs for Creating Virtual Machine
nic_id                            = "/subscriptions/d6037699-12ef-4e77-b6ec-9269bf8dbe88/resourceGroups/rg-ce-application/providers/Microsoft.Network/networkInterfaces/nic-vm"
#subnet_names                      = ["tier2"]
#vnet_name                         = "cloud-engg-project1"
vm_name                           = ["linux-vm01"]
vm_size                           = ["Standard_B1s"]
publisher                         = ["Canonical"]
offer                             = ["UbuntuServer"]
sku                               = ["16.04-LTS"]
image_version                     = ["latest"]
vm_os_disk_name                   = ["mydisc3"]
caching                           = ["ReadWrite"]

storage_account_type              = ["Standard_LRS"]
admin_username                    = ["vm3-admin"]
key_file_name                     = ["demo.pub"]
disable_password_authentication   = ["true"]
