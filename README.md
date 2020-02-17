# Terraform Azure DNS Record Module

This module creates an AKS cluster following the best practices defined by the SRE/Cloud team at Stone CO.

## Requirements

- Terraform version 0.44+
- Azurerm Provider version 1.44+ (tested on version 1.44.0)

## How to use

The following parameters are expected:
- ``zone_name``: All resources in this module will be created in this dns zone. Ex: dev.dca.infra.stone.com.br
- ``resource_group_name``: All resources in this module will be created in this resource group. Ex: Infrastructure-Common-EC2-DEV
- ``has_dns_a_record``: If you need to create type A dns entry, you must pass the value `true`.
- ``dns_a_record_name``: If you need to create type A dns entry, you must pass the name of the dns record.
- ``dns_a_record_value``: If you need to create type A dns entry, you must pass the value of the dns record.
- ``has_dns_cname_record``: If you need to create type CNAME dns entry, you must pass the value `true`.
- ``dns_cname_record_name``: If you need to create type CNAME dns entry, you must pass the name of the dns record.
- ``dns_cname_value``: If you need to create type CNAME dns entry, you must pass the value of the dns record.

With all that defined, just call it in your configuration

```hcl
module "dns_record" {
  source = "git@github.com:stone-payments/terraform-azuredns-record.git?ref=v1.0.0" # see tags for available versions

  has_dns_a_record      = "..."
  zone_name             = "..."
  resource_group_name   = "..."
  dns_a_record_name     = "..."
  dns_a_record_value    = "..."

  has_dns_cname_record  = "..." 
  dns_cname_record_name = "..."
  dns_cname_value       = "..."
}
```

## Contributing

Contributions of all forms are welcome. Just open a new issue or pull request.