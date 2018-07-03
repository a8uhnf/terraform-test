resource "google_container_cluster" "primary" {
  name               = "hanifa"
  zone               = "us-central1-a"
  initial_node_count = "${var.initial_node_count}"
  min_master_version = "${var.min_master_version}"
  logging_service    = "none"
}
