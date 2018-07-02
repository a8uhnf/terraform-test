provider "google" {
  credentials = "${file("account.json")}"
  project     = "a8uhnf2"
  region      = "us-central1-a"
}
