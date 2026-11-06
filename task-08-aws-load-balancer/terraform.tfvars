aws_region = "us-east-1"
project_id = "cmtr-nl4ibdbd"
vpc_name   = "cmtr-nl4ibdbd-vpc"

public_subnet_a_cidr  = "10.0.1.0/24"
private_subnet_a_cidr = "10.0.2.0/24"
public_subnet_b_cidr  = "10.0.3.0/24"
private_subnet_b_cidr = "10.0.4.0/24"

ssh_security_group_name  = "cmtr-nl4ibdbd-ec2_sg"
http_security_group_name = "cmtr-nl4ibdbd-http_sg"
alb_security_group_name  = "cmtr-nl4ibdbd-sglb"

iam_instance_profile = "cmtr-nl4ibdbd-instance_profile"
key_name             = "cmtr-nl4ibdbd-keypair"

aws_launch_template_name = "cmtr-nl4ibdbd-template"
aws_asg_name             = "cmtr-nl4ibdbd-asg"
load_balancer            = "cmtr-nl4ibdbd-loadbalancer"