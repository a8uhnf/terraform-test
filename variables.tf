variable "gcloud_region" {
  default = "us-central1-a"
}

variable "gcloud_zone" {
  default = "us-central1-a"
}

variable "gcloud_project" {
  default = ""
}

variable "platform_name" {
  default = ""
}

variable "cluster_master_auth_username" {}
variable "cluster_master_auth_password" {}

variable "cluster_node_machine_type" {
  default = "n1-standard-1"
}

variable "cluster_node_initial_count" {
  default = 3
}

variable "min_master_version" {
  default = "1.9.6-gke.1"
}
