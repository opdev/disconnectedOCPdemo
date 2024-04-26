# demo-custom-vpc
Before you begin,
- [Install](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) Terraform 
- Add aws access and aws_secret key to the terraform.tfvars file
```
  cat > terraform.tfvars << EOF
  aws_access_key = "<access_key>"
  aws_secret_key = "<secret_key>"
EOF
```

- Update the reference to **Amazon Machine Image** or ami in the [public.tf](https://github.com/opdev/disconnectedOCPdemo/blob/main/bastion/public.tf#L46) file

Steps to install
1. **Initialize Terraform**

   This initializes your working directory containing Terraform configuration files. It prepares the necessary foundations for Terraform operations and downloads any required providers.
   ```
   $ terraform init
   ```
2. **Create an Execution Plan**

   Generate an execution plan with Terraform. This provides you a clear preview of the changes that will be applied to your infrastructure based on your configurations.
   ```
   $ terraform plan
   ```
3. **Apply the Configuration**

   Apply the changes as planned in the previous step to modify your infrastructure. This command will execute what was determined in the plan, aligning your actual infrastructure with the state defined by your Terraform files.
   ```
   $ terraform apply
   ```

Reference:

[Requirements](https://docs.openshift.com/container-platform/4.15/installing/installing_aws/installing-restricted-networks-aws-installer-provisioned.html#installation-custom-aws-vpc-requirements_installing-restricted-networks-aws-installer-provisioned) for using VPC
