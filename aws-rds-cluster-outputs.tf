output "id" {
  value = aws_rds_cluster.general.id
}

output "arn" {
  value = aws_rds_cluster.general.arn
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

output "database_name" {
    value = aws_rds_cluster.general.database_name
}

output "engine" {
    value = aws_rds_cluster.general.engine
}

output "hosted_zone_id" {
    value = aws_rds_cluster.general.hosted_zone_id
}

output "master_username" {
    value = aws_rds_cluster.general.master_username
}

