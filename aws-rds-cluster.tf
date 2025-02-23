resource "aws_rds_cluster" "general" {
  cluster_identifier = var.cluster_identifier
  cluster_identifier_prefix = var.cluster_identifier_prefix
  database_name = var.database_name
  apply_immediately = var.apply_immediately
  availability_zones = var.availability_zones
  backtrack_window = var.backtrack_window
  backup_retention_period = var.backup_retention_period
  copy_tags_to_snapshot = var.copy_tags_to_snapshot
  db_subnet_group_name = var.db_subnet_group_name
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name
  deletion_protection = var.deletion_protection
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  engine = var.engine
  engine_mode = var.engine_mode
  engine_version = var.engine_version
  final_snapshot_identifier = var.final_snapshot_identifier
  global_cluster_identifier = var.global_cluster_identifier
  iam_roles = var.iam_roles
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  kms_key_id = var.kms_key_id
  master_username = var.master_username
  master_password = var.master_password
  preferred_backup_window = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  port = var.port
  replication_source_identifier = var.replication_source_identifier
  
  dynamic scaling_configuration {
    for_each = var.scaling_configuration == null ? [] : tolist([var.scaling_configuration])
    content {
      auto_pause = var.scaling_configuration_auto_pause
      max_capacity = var.scaling_configuration_max_capacity
      min_capacity = var.scaling_configuration_min_capacity
      seconds_until_auto_pause = var.scaling_configuration_seconds_until_auto_pause
      timeout_action = var.scaling_configuration_timeout_action
    }
  }

  dynamic serverlessv2_scaling_configuration {
    for_each = var.serverlessv2_scaling_configuration == null ? [] : tolist([var.serverlessv2_scaling_configuration])
    content {
      max_capacity = var.serverlessv2_scaling_configuration_max_capacity
      min_capacity = var.serverlessv2_scaling_configuration_min_capacity
    }
  }

  skip_final_snapshot = var.skip_final_snapshot
  source_region = var.source_region
  storage_encrypted = var.storage_encrypted
  vpc_security_group_ids = var.vpc_security_group_ids
  snapshot_identifier = var.snapshot_identifier
  enable_http_endpoint = var.enable_http_endpoint
  tags = var.tags
}
