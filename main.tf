#####################################################################
# Variables
#####################################################################

variable "project" {}
variable "region" {}

variable "cluster_name" {}

#####################################################################
# Modules
#####################################################################
module "gke" {
  source       = "./gke"
  project      = "${var.project}"
  region       = "${var.region}"
  cluster_name = "${var.cluster_name}"
}

# module "k8s" {
#   source = "./k8s"
# }

