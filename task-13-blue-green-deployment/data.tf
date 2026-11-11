data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-nl4ibdbd-vpc"]
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }

  tags = {
    Name = "cmtr-nl4ibdbd-public-subnet*"
  }
}

data "aws_security_group" "ssh" {
  name   = "cmtr-nl4ibdbd-sg-ssh"
  vpc_id = data.aws_vpc.main.id
}

data "aws_security_group" "http" {
  name   = "cmtr-nl4ibdbd-sg-http"
  vpc_id = data.aws_vpc.main.id
}

data "aws_security_group" "lb" {
  name   = "cmtr-nl4ibdbd-sg-lb"
  vpc_id = data.aws_vpc.main.id
}