output "arns" {
  value = values(aws_vpc_endpoint.ssm)[*].arn
}
