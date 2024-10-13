# Nginx-AWS

Terraform code to deploy an NGINX app using AWS EC2

## Requirements

To plan and apply locally you'll need the following:

- Terraform 1.7+
- Authenticated AWS account using `aws`
- An EC2 KeyPair in the same location (free-trial uses EU-WEST-2 (Lon)) called devops (or name can be changed in variables.tf)

## Usage

``` shellsession
terraform init
terraform workspace select free-trial
terraform plan
terraform apply
```
