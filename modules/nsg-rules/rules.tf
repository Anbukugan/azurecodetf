# The pre-configurable rules for the network security groups
variable rules {
    type = map
    default = {
    Allow_Port80_Inbound            = ["100", "Inbound", "Allow", "*", "*", "80", "Allowport80" ,"*" , "*"]
    Allow_Port443_Inbound           = ["200", "Inbound", "Allow", "*", "*", "443", "Allowport443" ,"*" , "*"]
    Allow_Port3389_Inbound          = ["1100", "Inbound", "Allow", "*", "*", "3389", "Allowport3389" ,"*" , "*"]
    Deny_Virtualnetwork_Inbound     = ["4096", "Inbound", "Deny", "*", "*", "*", "DenyVirtualNetwork" ,"VirtualNetwork" ,"VirtualNetwork"]
    Allow_Azuremonitor_Outbound     = ["300", "Outbound", "Allow", "*", "*", "*", "Allowazuremonitor" ,"VirtualNetwork" ,"azureMonitor"]
    Deny_Virtualnetwork_Outbound    = ["4095", "Outbound", "Deny", "*", "*", "*", "DenyVirtualNetwork" ,"VirtualNetwork" ,"VirtualNetwork"]
    Deny_Internet_Outbound          = ["4086", "Outbound", "Deny", "*", "*", "*", "DenyInternet" ,"*" , "Internet"]
    Allow_Port22_Inbound            = ["150", "Inbound", "Allow", "*", "*", "22", "Allowport22" ,"*" , "*"]
    Allow_Internet_Inbound          = ["400", "Inbound", "Allow", "*", "*", "*", "AllowInternet" ,"Internet" , "*"]
    Allow_Hdinsight_Inbound         = ["500", "Inbound", "Allow", "*", "*", "443", "Allowport443" ,"Hdinsight" , "*"]
    Allow_Adds_Inbound              = ["600", "Inbound", "Allow", "*", "*", "443", "Allowadds443" ,"AzureActiveDirectoryDomainServices" , "*"] 
    Allow_PS_Remoting               = ["700", "Inbound", "Allow", "*", "*", "5986", "Allowadds5986" ,"AzureActiveDirectoryDomainServices" , "*"]  
    Allow_CorpNetSaw_adds           = ["800", "Inbound", "Allow", "*", "*", "3389", "AllowCorpNetSaw" ,"CorpNetSaw" , "*"]   
    Deny_Internet_Inbound           = ["4096", "Inbound", "Deny", "*", "*", "*", "DenyInternet" ,"Internet" , "*"]
    Allow_Port443_Outbound          = ["200", "Outbound", "Allow", "*", "*", "443", "Allowport443" ,"VirtualNetwork" , "*"]
    Allow_Hdinsight_Outbound        = ["500", "Outbound", "Allow", "*", "*", "*", "AllowHdinsight" ,"*" , "Hdinsight"]
    Allow_storage_outbound          = ["600", "Outbound", "Allow", "*", "*", "*", "Allowstorage" ,"*" , "Storage"]
    Allow_Azure_AD_outbound         = ["700", "Outbound", "Allow", "*", "*", "*", "AllowAD" ,"*" , "AzureActiveDirectory"]
    Allow_AADDS_outbound            = ["800", "Outbound", "Allow", "*", "*", "*", "AllowAADDS" ,"*" , "AzureActiveDirectoryDomainServices"]
    Allow_port_636_Inbound          = ["900", "Inbound", "Allow", "*", "*", "636", "Allow636" ,"*" , "*"]
    Allow_databricks_Inbound_22     = ["110", "Inbound", "Allow", "*", "*", "22", "Allowdatabricks22" ,"AzureDatabricks" , "VirtualNetwork"]
    Allow_databricks_Inbound_5557   = ["120", "Inbound", "Allow", "*", "*", "5557", "Allowdatabricks5557" ,"AzureDatabricks" , "VirtualNetwork"]
    Allow_sql_outbound              = ["610", "Outbound", "Allow", "*", "*", "3306", "Allowsql" ,"*" , "Sql"]
    Allow_eventhub_outbound         = ["620", "Outbound", "Allow", "*", "*", "9093", "Alloweventhub" ,"*" , "Eventhub"]
    Allow_Port443_databricksOut     = ["630", "Outbound", "Allow", "*", "*", "443", "Allowport443databricks" ,"VirtualNetwork" , "AzureDatabricks"]
}
}
