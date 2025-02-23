output "id" {
  value = aws_rds_cluster.general.id
}

output "arn" {
  value = aws_rds_cluster.general.arn
}

output "availability_zones" {
    value = aws_rds_cluster.general.availability_zones
}

output "cluster_identifier" {
  value = aws_rds_cluster.general.cluster_identifier
}

output "cluster_resource_id" {
  value = aws_rds_cluster.general.cluster_resource_id
}

output "endpoint" {
    value = aws_rds_cluster.general.endpoint
}

output "reader_endpoint" {
    value = aws_rds_cluster.general.reader_endpoint
}

output "database_name" {
    value = aws_rds_cluster.general.database_name
}

output "port" {
    value = aws_rds_cluster.general.port
}

output "backup_retention_period" {
    value = aws_rds_cluster.general.backup_retention_period
}

output "preferred_backup_window" {
    value = aws_rds_cluster.general.preferred_backup_window
}

output "preferred_maintenance_window" {
    value = aws_rds_cluster.general.preferred_maintenance_window
}

output "engine" {
    value = aws_rds_cluster.general.engine
}

output "engine_version_actual" {
    value = aws_rds_cluster.general.engine_version_actual
}

output "hosted_zone_id" {
    value = aws_rds_cluster.general.hosted_zone_id
}

output "master_username" {
    value = aws_rds_cluster.general.master_username
    sensitive = true
}

output "master_password" {
    value = aws_rds_cluster.general.master_password
    sensitive = true
}

output "storage_encrypted" {
    value = aws_rds_cluster.general.storage_encrypted
}

output "tags_all" {
    value = aws_rds_cluster.general.tags_all
}