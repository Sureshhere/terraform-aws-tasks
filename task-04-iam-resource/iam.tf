
resource "aws_iam_group" "main" {
  name = var.iam_group_name
  path = "/"
}

resource "aws_iam_policy" "s3_write" {
  name        = var.iam_policy_name
  description = "Allows write operations on the designated S3 bucket."
  policy = templatefile("${path.module}/policy.json", {
    bucket_name = var.bucket_name
  })

  tags = {
    Project = var.project_id
  }
}

resource "aws_iam_role" "ec2" {
  name = var.iam_role_name
  path = "/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })

  tags = {
    Project = var.project_id
  }
}

resource "aws_iam_role_policy_attachment" "s3_write" {
  role       = aws_iam_role.ec2.name
  policy_arn = aws_iam_policy.s3_write.arn
}

resource "aws_iam_instance_profile" "ec2" {
  name = var.instance_profile_name
  role = aws_iam_role.ec2.name
  path = "/"

  tags = {
    Project = var.project_id
  }
}
