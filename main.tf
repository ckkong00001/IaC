provider "google" {
  project = "gke-tf-demo-246313"
  credentials = "${file("./serviceaccount.json")}"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  location            = "us-central1-c"
  initial_node_count = 3
}
