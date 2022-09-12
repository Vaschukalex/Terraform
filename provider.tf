provider "google" {
  credentials = file("SA_key.json")

  project = "my-test-362010"
  region  = "europe-central2"
  zone    = "europe-central2-a"
}