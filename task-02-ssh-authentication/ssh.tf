resource "aws_key_pair" "main" {
  key_name   = var.aws_keypair_name
  public_key = var.ssh_key

  tags = {
    Project = "epam-tf-lab"
    ID      = var.project_id
  }
}
