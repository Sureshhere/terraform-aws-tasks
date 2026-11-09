output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.instance.id
}

output "instance_public_ip" {
  description = "Public IP address of the created EC2 instance"
  value       = aws_instance.instance.public_ip
}

output "discovered_vpc_id" {
  description = "ID of the discovered VPC"
  value       = data.aws_vpc.existing.id
}

output "discovered_subnet_id" {
  description = "ID of the discovered public subnet"
  value       = data.aws_subnet.public.id
}

output "discovered_security_group_id" {
  description = "ID of the discovered security group"
  value       = data.aws_security_group.existing.id
}

output "discovered_ami_id" {
  description = "ID of the latest matching Amazon Linux 2023 AMI"
  value       = data.aws_ami.amazon_linux.id
}