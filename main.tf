resource "google_container_cluster" "primary" {
  name               = "Test"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    service_account = "terraforms@terraform-testing-362009.iam.gserviceaccount.com"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      foo = "bar"
    }
    tags = ["foo", "bar"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}