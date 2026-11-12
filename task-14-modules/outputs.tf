output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.network.vpc_id
}

output "subnet_ids" {
  description = "IDs of the public subnets."
  value       = module.network.subnet_ids
}

output "alb_dns_name" {
  description = "DNS name of the application load balancer."
  value       = module.application.alb_dns_name
}

output "autoscaling_group_name" {
  description = "Name of the application Auto Scaling group."
  value       = module.application.autoscaling_group_name
}

output "launch_template_id" {
  description = "ID of the application launch template."
  value       = module.application.launch_template_id
}
