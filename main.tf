resource "google_container_cluster" "primary" {
  name               = "test"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    service_account = "terraform@my-test-362010.iam.gserviceaccount.com"
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