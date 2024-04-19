# demo-custom-vpc
Before you begin,
- Add aws access and aws_secret key to the terraform.tfvars file

To customize,
- Replace the ami, in this demo, we're using ami-0d77c9d87c7e619f9

Steps to install

terraform init -var-file=terraform.tfvars
terraform plan   
terraform apply --var-file=terraform.tfvars
