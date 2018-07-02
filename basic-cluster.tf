resource "google_container_cluster" "primary" {
  name               = "hanifa"
  zone               = "us-central1-a"
  initial_node_count = 2
  min_master_version = "1.9.6-gke.1"
  logging_service    = "none"
}
