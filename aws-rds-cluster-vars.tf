variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "tags" {
  default = {}
}

variable "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  default = false
}

variable "availability_zones" {
  description = "(Optional) A list of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created. RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next Terraform apply. It is recommended to specify 3 AZs or use the lifecycle configuration block ignore_changes argument if necessary."
  default = []
}

variable "backtrack_window" {
  description = "(Optional) The target backtrack window, in seconds. Only available for aurora engine currently. To disable backtracking, set this value to 0. Defaults to 0. Must be between 0 and 259200 (72 hours)"
  default = 0
}

variable "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Default 1"
  default = 1
}

variable "copy_tags_to_snapshot" {
  description = "(Optional, boolean) Copy all Cluster tags to snapshots. Default is false."
  default = true
}

variable "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance. NOTE: This must match the db_subnet_group_name specified on every aws_rds_cluster_instance in the cluster"
  default = null
}

variable "db_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  default = null
}

variable "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  default = true
}

variable "enabled_cloudwatch_logs_exports" {
  description = "(Optional) List of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: audit, error, general, slowquery, postgresql (PostgreSQL)."
  //default = [audit, error]
  default = null
}

variable "engine" {
  description = "(Optional) The name of the database engine to be used for this DB cluster. Defaults to aurora. Valid Values: aurora, aurora-mysql, aurora-postgresql"
  default = "aurora"
}

variable "engine_mode" {
  description = "(Optional) The database engine mode. Valid values: global, multimaster, parallelquery, provisioned, serverless. Defaults to: provisioned. See the RDS User Guide for limitations when using serverless."
  default = "serverless"
}

variable "engine_version" {
  description = "(Optional) The database engine version. Updating this argument results in an outage. See the Aurora MySQL and Aurora Postgres documentation for your configured engine to determine this value. For example with Aurora MySQL 2, a potential value for this argument is 5.7.mysql_aurora.2.03.2."
  default = null
}

variable "final_snapshot_identifier" {
  description = ""
  default = null
}

variable "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_rds_global_cluster."
  default = null
}

variable "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the RDS Cluster."
  default = null
}

variable "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see AWS Documentation for availability and limitations."
  default = null
}

variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  default = null
}

variable "master_username" {
  description = "(Required unless a snapshot_identifier or global_cluster_identifier is provided) Username for the master DB user. Please refer to the RDS Naming Constraints. This argument does not support in-place updates and cannot be changed during a restore from snapshot."
  default = "admin"
}

variable "master_password" {
  description = "(Required unless a snapshot_identifier or global_cluster_identifier is provided) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the RDS Naming Constraints"
  default = "!576849A47823723dmin4564!"
}

variable "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC Default: A 30-minute window selected at random from an 8-hour block of time per region. e.g. 04:00-09:00"
  default = "07:00-09:00"
}

variable "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in (UTC) e.g. wed:04:00-wed:04:30"
  default = "sun:04:00-sun:04:30"
}

variable "port" {
  description = "(Optional) The port on which the DB accepts connections"
  default = 3306
}

variable "replication_source_identifier" {
  description = "(Optional) ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica."
  default = null
}

variable "scaling_configuration" {
  description = "(Optional) Nested attribute with scaling properties. Only valid when engine_mode is set to serverless. More details below."
  default = null
}

variable "scaling_configuration_auto_pause" {
  default = null
}

variable "scaling_configuration_max_capacity" {
  default = null
}

variable "scaling_configuration_min_capacity" {
  default = null
}

variable "scaling_configuration_seconds_until_auto_pause" {
  default = null
}

variable "scaling_configuration_timeout_action" {
  default = null
}

/*
SET scaling_configuration LIKE THIS IN YOUR PLAN FILE:
scaling_configuration = {
    auto_pause = true
    max_capacity = 256
    min_capacity = 2
    seconds_until_auto_pause = 300
    timeout_action = "ForceApplyCapacityChange"
  }
*/

variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  default = false
}

variable "source_region" {
  description = "(Optional) The source region for an encrypted replica DB cluster."
  default = null
}

variable "storage_encrypted" {
  description = "(Optional) Specifies whether the DB cluster is encrypted. The default is false for provisioned engine_mode and true for serverless engine_mode."
  default = true
}

variable "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the Cluster"
  default = null
}

variable "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  default = null
}

