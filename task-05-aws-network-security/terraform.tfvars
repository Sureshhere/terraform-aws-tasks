aws_region = "us-east-1"
project_id = "cmtr-nl4ibdbd"

allowed_ip_range = [
  "18.153.146.156/32",
  "182.70.190.148/32"
]

vpc_id              = "vpc-09370cca1f3482340"
public_instance_id  = "i-03e786ccb59615ccb"
private_instance_id = "i-0d0aa6c093618723e"

ssh_sg_name          = "cmtr-nl4ibdbd-ssh-sg"
public_http_sg_name  = "cmtr-nl4ibdbd-public-http-sg"
private_http_sg_name = "cmtr-nl4ibdbd-private-http-sg"