locals {
  env = {
    free-trial = {
        region = "eu-west-2"

        security = {
          name = "security"
        }

        instance = {
          ami  = "ami-0b4c7755cdf0d9219"
          type = "t2.micro"
          name = "devops"
        }
    }
  }

  env_name  = terraform.workspace
  workspace = lookup(local.env, local.env_name, {})
}