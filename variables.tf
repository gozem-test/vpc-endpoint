variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "endpoints" {
  type = list(object({
    service_name        = string
    vpc_endpoint_type   = optional(string)
    security_group_ids  = optional(list(string))
    private_dns_enabled = optional(bool, false)
  }))
}
