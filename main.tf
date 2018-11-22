#####################################################################
# Variables
#####################################################################

variable "project" {}
variable "region" {}

variable "cluster_name" {}

variable "node_number" {}

variable "email" {}

#####################################################################
# Modules
#####################################################################
module "gke" {
  source       = "./gke"
  project      = "${var.project}"
  region       = "${var.region}"
  cluster_name = "${var.cluster_name}"
  node_number  = "${var.node_number}"
}

# module "k8s" {
#   source = "./k8s"
# }

module "nginx_deploy" {
  source = "./nginx"
  email  = "${var.email}"
}

#module "mysql" {
#  source = "./mysql"
#}

