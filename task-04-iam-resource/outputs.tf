
output "iam_group_name" {
  description = "Name of the created IAM group."
  value       = aws_iam_group.main.name
}

output "iam_policy_arn" {
  description = "ARN of the custom S3 IAM policy."
  value       = aws_iam_policy.s3_write.arn
}

output "iam_role_name" {
  description = "Name of the IAM role trusted by EC2."
  value       = aws_iam_role.ec2.name
}

output "iam_instance_profile_name" {
  description = "Name of the EC2 IAM instance profile."
  value       = aws_iam_instance_profile.ec2.name
}
