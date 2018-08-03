variable "region" {
  default = "us-central1-a"
}

variable "project" {
  default = "a8uhnf"
}




provider "google" {
    credentials = "${file("account.json")}"
    project     = "${var.project}"
    region      = "${var.region}"
}
