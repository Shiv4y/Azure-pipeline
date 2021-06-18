# MSI keys , add this details to backend.tf file if there is any change in value
variable "subscription_id" {
  description = "Subscription ID"
}
variable "client_id" {
  description = "App Id"
}
variable "client_secret" {
  description = "Key for Service principal"
}
variable "tenant_id" {
  description = "Tenant ID from AD"
}

#resource group variable
variable "resourcegrpname" {
  description = "Resource Group"
  default     = "demorg"
}
variable "resourceglocation" {
  description = "Location"
  default     = "centralindia"
}
 
 variable "vmname" {
   description = "sql virtual machine name"
   default = "sqlvm"
   
 }

# VNet variables
variable "vnet_name" {
  description = "Virtual network name"
  default     = "TFVnet"
}
variable "vnet_address_space" {
  description = "VNet address space"
  default     = ["10.0.0.0/16"]
}


#Subnet variables
variable "subnet_name" {
  description = "Subnet name"
  default     = "tfsubnet"
}
variable "subnet_address_prefixes" {
  description = "subnet address prefixes"
  default     = ["10.0.1.0/24"]
}

# Network security group variables
variable "nsgname" {
  description = "Network security group name "
  default     = "appnsg"
}

# variable "nsg_id"{
#   description="nsg id"
#   default = azurerm_network_security_group.appnsg.id
# }



#Load balancer variables
variable "lbipname" {
  description = "Load balancer IP name"
  default     = "lbpublicip"
}
variable "lbname" {
  description = "Load balancer name"
  default     = "demolb"
}
# variable "vmss_lbaddrpool_id" {
#   description = "Load balancer address pool id"
#   default     = azurerm_lb_backend_address_pool.lbaddrpool.id
# }

# variable "vmss_lbnatpool_id" {
#   description = "Load balancer nat address pool id"
#   default     =  azurerm_lb_nat_pool.lbnatpool.id   
# }

# VMSS variables
variable "vmss_name" {
  description = "virtual machine scaleset name"
  default     = "appvmss"
}
# variable "vmss_id" {
#   description = "virtual machine scaleset id"
#   default = azurerm_virtual_machine_scale_set.main.Id
# }
variable "vmss_name_prefix" {
  description = "virtual machine name prefix"
  default     = "appvmss"
}
variable "vmss_admin_username" {
  description = "virtual machine Admin user name"
  default     = "shiva"
}
variable "vmss_admin_password" {
  description = "virtual machine Admin user password"
  default     = "P@ssword1"
}

#sqlvm_ variabel
# variable "subnet_id" {
#   description = "Subnet Id where to join the VM"
#   default     = azurerm_subnet.tfsubnet.Id
# }

variable "admin_username" {
  default = "testadmin"
  description = "The username associated with the local administrator account on the virtual machine"
}

variable "admin_password" {
  default = "Password1234!"
  description = "The password associated with the local administrator account on the virtual machine"
}


#storage account variable

variable "storage_account_name" {
  description = "Storage account name"
  default = "asignstorage08"
}

variable "container_name" {
  description = "your storage account container name "
  default = "tfstate"
  
}

variable "storage_account_access_key" {
  description = "Storage account access key"
  default = ""
}



