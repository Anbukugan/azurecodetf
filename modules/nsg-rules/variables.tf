# Variable declaration of resource group name where NSG gets created
variable resource_group_name {

}

# Variable declaration of the name for NSGs
variable nsg_name {

}

# Variable declaration of Web layer rules for NSGs
variable nsg_rules {
  type= list
}
