variable "region" {
  default = "us-central1-a"
}

variable "project" {
  default = "a8uhnf"
}

variable "cluster_name" {}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
