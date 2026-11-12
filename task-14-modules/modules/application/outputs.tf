
output "alb_dns_name" {
  description = "DNS name of the application load balancer."
  value       = aws_lb.main.dns_name
}

output "autoscaling_group_name" {
  description = "Name of the application Auto Scaling group."
  value       = aws_autoscaling_group.main.name
}

output "launch_template_id" {
  description = "ID of the application launch template."
  value       = aws_launch_template.main.id
}

output "target_group_arn" {
  description = "ARN of the application target group."
  value       = aws_lb_target_group.main.arn
}
