variable "region" {
  description = "The GCP region to deploy to (e.g. asia-east1)"
  type        = string
}

variable "name" {
  description = "The name of the DB"
  type        = string
}

variable "instance_class" {
  description = "The instance class of the DB (e.g. db-f1-micro)"
  type        = string
}

variable "allocated_storage" {
  description = "The amount of space, in GB, to allocate for the DB"
  type        = number
}

variable "storage_type" {
  description = "The type of data disk: PD_SSD or PD_HDD."
  type        = string
}

variable "master_username" {
  description = "The username for the master user of the DB"
  type        = string
}

variable "master_password" {
  description = "The password for the master user of the DB"
  type        = string
}