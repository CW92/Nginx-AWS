provider "aws" {
  region = local.workspace.region
}

module "aws_security_group" {
  source  = "./modules/security_group"

  name    = local.workspace.security.name
}

module "aws_instance" {
  source  = "./modules/instance"

  ami               = local.workspace.instance.ami
  instance_type     = local.workspace.instance.type
  key_name          = local.workspace.instance.name

  security_group_id = module.aws_security_group.id
}

output "public_ip" {
  value = module.aws_instance.ip
}
