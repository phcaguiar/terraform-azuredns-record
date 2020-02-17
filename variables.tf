# Common variables

variable "zone_name" {
  description = "The dns zone name."
}

variable "resource_group_name" {
  description = "The resource group name of the dns zone."
}

variable "ttl" {
 description = "The ttl value of the dns records." 
 default = "900"
}

# Variables of the dns recor A

variable "has_dns_a_record" {
  description = "If true, the module will create dns record A. Otherwise they won't be created."
  default = "false"
}

variable "dns_a_record_name" {
  description = "The name of the dns record A."
}

variable "dns_a_record_value" {
  description = "The value of the dns record A."
}

# Variables of the dns recor CNAME

variable "has_dns_cname_record" {
  description = "If true, the module will create dns record CNAME. Otherwise they won't be created."    
  default = "false"
}

variable "dns_cname_record_name" {
  description = "The name of the dns record CNAME."
}

variable "dns_cname_value" {
  description = "The value of the dns record CNAME."
}