variable "rg" {
  type        = "string"
  description = "Name of Lab resource group to provision resources to."
}

variable "location" {
  type        = "string"
  description = "Azure region to put resources in"
}

variable "securityGroupRules" {
  type        = list(object({
    name                  = string
    priority              = number
    protocol              = string
    destinationPortRange  = string
  }))
  description = "List of security group rules"
}

variable "secretId" {
  type        = "string"
  description = "name of secret containing admin password for vms"
}

variable "keyVault" {
  type        = "string"
  description = "Name of the pre-existing key vault instance"
}

variable "tags" {
  type        = map(string)
  description = "tags to be used with all resources in the lab"
}

variable "vnet_name" {
  type        = string
  description = "Azure ID for Virtual Network where subnets will be placed"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet in CIDR format"
}

variable "host_name" {
  type        = string
  description = "Unique name for VM"
}
