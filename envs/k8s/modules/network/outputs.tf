output "vpc_id" {
  description = "VPC ID."
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "First public subnet ID."
  value       = aws_subnet.public[var.public_subnet_azs[0]].id
}

output "public_subnet_ids" {
  description = "Public subnet IDs."
  value       = [for az in var.public_subnet_azs : aws_subnet.public[az].id]
}

output "igw_id" {
  description = "Internet gateway ID."
  value       = aws_internet_gateway.this.id
}
