output "vpc_id" {
  description = "ID of the created VPC."
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "IDs of the created public subnets."
  value       = aws_subnet.public[*].id
}

output "subnet_cidrs" {
  description = "CIDR blocks of the created public subnets."
  value       = aws_subnet.public[*].cidr_block
}
