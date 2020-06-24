# terraform-aws-rds-cluster
Repository managed by terraform (devops-git-repos) and deployed via Terraform Cloud // repo-creator: paul.greene

## Usage Example
Clone the plan repo to test this module with others to set up an aurora serverless rds cluster! (terraform-aws-rds-cluster-plan)[https://github.com/pgreene/terraform-aws-rds-cluster-plan]
```bash
# SSH or HTTPS clone, whatever you prefer:
git clone https://github.com/pgreene/terraform-aws-rds-cluster-plan.git
git clone git@github.com:pgreene/terraform-aws-rds-cluster-plan.git
# modify main.tf to suit your settings
terraform init
terraform workspace list
terraform workspace new prod # or whatever you want your workspace to be called - examples: dev, qa, prod
terraform validate
terraform apply
```

