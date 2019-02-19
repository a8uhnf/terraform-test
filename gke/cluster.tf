resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  zone               = "${var.region}"
  initial_node_count = "${var.node_number}"
  logging_service    = "none"
  monitoring_service = "none"

  node_config {
    machine_type = "n1-standard-2"

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
