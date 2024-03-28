resource "aws_vpc_endpoint" "ssm" {
  for_each = { for endpoint in var.endpoints : endpoint.service_name => endpoint }

  vpc_id              = var.vpc_id
  service_name        = each.value.service_name
  vpc_endpoint_type   = each.value.vpc_endpoint_type
  security_group_ids  = each.value.security_group_ids
  private_dns_enabled = each.value.private_dns_enabled
}
