# terraform-aws-rds-cluster
Repository managed by terraform (devops-git-repos) and deployed via Terraform Cloud // repo-creator: paul.greene

## Usage Example
How to use in your terraform plan file
`main.tf #contents`

```bash
locals {
  vpc_id = data.aws_vpc.vpc.id
  region = "eu-west-1"
}

module "aws_rds_cluster_parameter_group" {
  source = "git::https://github.com/pgreene/terraform-aws-rds-cluster-parameter-group"
  submodule = "rds"
}

# Sets up RDS Serverless Aurora Cluster!! 
module "aws_rds_cluster_aurora_serverless" {
  source = "git::https://github.com/pgreene/terraform-aws-rds-cluster"
  submodule = "db"
  apply_immediately = true
  availability_zones = ["eu-west-1a", "eu-west-1b"]
  vpc_security_group_ids = [module.aws_sg_db.id]
  db_subnet_group_name = module.aws_db_subnet_group.id
  db_cluster_parameter_group_name = module.aws_rds_cluster_parameter_group.id
  engine_mode = "serverless"
  engine = "aurora"
  // DO NOT SET ENGINE VERSION WHEN USING AURORA SERVERLESS !!!
  //engine_version = "5.6.mysql_aurora.1.17.9"
  deletion_protection = false
  scaling_configuration = {}
  scaling_configuration_auto_pause = true
  scaling_configuration_max_capacity = 1
  scaling_configuration_min_capacity = 1
  scaling_configuration_seconds_until_auto_pause = 300

  # enabled_cloudwatch_logs_exports is known to cause issues with terrafrom - leave it null & the default settings will be used
  //enabled_cloudwatch_logs_exports = ["audit", "error"]
  //scaling_configuration_timeout_action = "ForceApplyCapacityChange" 
  //skip_final_snapshot = false
  //final_snapshot_identifier = "test-you-can-delete"
}
```

