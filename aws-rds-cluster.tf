resource "aws_rds_cluster" "general" {
  cluster_identifier = var.name
  database_name = var.name
  apply_immediately = var.apply_immediately
  // availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  availability_zones = var.availability_zones
  backtrack_window = var.backtrack_window
  // backup_retention_period = 5
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
  // preferred_backup_window = "07:00-09:00"
  preferred_backup_window = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  port = var.port
  replication_source_identifier = var.replication_source_identifier
  
  dynamic scaling_configuration {
    for_each = var.scaling_configuration == null ? [] : list(var.scaling_configuration)
    content {
      auto_pause = var.scaling_configuration_auto_pause
      max_capacity = var.scaling_configuration_max_capacity
      min_capacity = var.scaling_configuration_min_capacity
      seconds_until_auto_pause = var.scaling_configuration_seconds_until_auto_pause
      timeout_action = var.scaling_configuration_timeout_action
    }
  }

  skip_final_snapshot = var.skip_final_snapshot
  source_region = var.source_region
  storage_encrypted = var.storage_encrypted
  vpc_security_group_ids = var.vpc_security_group_ids
  snapshot_identifier = var.snapshot_identifier

  tags = var.tags
}
