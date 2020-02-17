resource "azurerm_dns_a_record" "dns_a_record" {
  count               = var.has_dns_a_record ? 1 : 0
  name                = var.dns_a_record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.dns_a_record_value
}

resource "azurerm_dns_cname_record" "dns_cname_record" {
  count               = var.has_dns_cname_record ? 1 : 0
  name                = var.dns_cname_record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  record              = var.dns_cname_value
}