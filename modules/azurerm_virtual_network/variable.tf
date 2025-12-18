variable "vnets" {
  description = "Map of Virtual Network configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
    dns_servers         = optional(list(string))
    bgp_community           = optional(string)
    edge_zone               = optional(string)
    flow_timeout_in_minutes = optional(number)
    tags                = optional(map(string))
    
    subnets = list(object({
      name             = string
      address_prefixes = list(string)
      network_security_group_id = optional(string)
      route_table_id           = optional(string)
      service_endpoints        = optional(list(string))
      delegation = optional(object({
        name = string
        service_delegation = object({
          name    = string
          actions = list(string)
        })
      }))

    }))}))
    }
