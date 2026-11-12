
module "network" {
  source = "./modules/network"

  vpc_name              = "${var.project_name}-vpc"
  vpc_cidr              = var.vpc_cidr
  subnet_names          = var.subnet_names
  subnet_cidrs          = var.subnet_cidrs
  availability_zones    = var.availability_zones
  internet_gateway_name = "${var.project_name}-igw"
  route_table_name      = "${var.project_name}-rt"
}

module "network_security" {
  source = "./modules/network_security"

  vpc_id           = module.network.vpc_id
  allowed_ip_range = var.allowed_ip_range

  ssh_sg_name          = "${var.project_name}-ssh-sg"
  public_http_sg_name  = "${var.project_name}-public-http-sg"
  private_http_sg_name = "${var.project_name}-private-http-sg"

  project_name = var.project_name
}

module "application" {
  source = "./modules/application"

  project_name  = var.project_name
  ami_id        = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  vpc_id = module.network.vpc_id

  subnet_ids = module.network.subnet_ids

  ssh_security_group_id = module.network_security.ssh_security_group_id

  private_http_security_group_id = module.network_security.private_http_security_group_id

  public_http_security_group_id = module.network_security.public_http_security_group_id

  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size
}
