terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aws = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
# -----------------------
# CREATE THE MYSQL DB
# -----------------------

resource "google_sql_database" "mysql" {
  name     = var.name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "mysql_instance" {
  name             = var.name
  master_instance_name = var.name
  region           = var.gcp_region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.instance_class
    disk_size = var.allocated_storage
    disk_type = var.storage_type
  }

  replica_configuration {
    username = var.master_username
    password = var.master_password
  }

  deletion_protection  = true
}