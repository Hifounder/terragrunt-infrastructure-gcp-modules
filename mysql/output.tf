output "endpoint" {
  value = google_sql_database_instance.mysql_instance.endpoint
}

output "db_name" {
  value = google_sql_database_instance.mysql_instance.name
}
