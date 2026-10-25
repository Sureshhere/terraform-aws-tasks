aws_region = "us-east-1"

vpc_name = "cmtr-nl4ibdbd-01-vpc"
vpc_cidr = "10.10.0.0/16"

subnet_names = [
  "cmtr-nl4ibdbd-01-subnet-public-a",
  "cmtr-nl4ibdbd-01-subnet-public-b",
  "cmtr-nl4ibdbd-01-subnet-public-c"
]

subnet_cidrs = [
  "10.10.1.0/24",
  "10.10.2.0/24",
  "10.10.3.0/24"
]

availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

internet_gateway_name = "cmtr-nl4ibdbd-01-igw"

route_table_name = "cmtr-nl4ibdbd-01-rt"