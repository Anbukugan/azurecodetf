# Variable declaration for NSG Enable/Disable flag
variable nsg_enable {

}


# Variable declaration of resource group name where NSG gets created
variable resource_group_name {

}


# Variable declaration of region where NSG gets created
variable region {

}


# Variable declaration of the nams for NSGs

variable nsg_name {
    type = list
}


# Variable declaration for adding Tags to be used for NSGs
variable tagvalue {
  type = map
}


# Variable declaration for Environment value to be added
variable environment {

}