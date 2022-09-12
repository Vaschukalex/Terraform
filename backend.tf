terraform {
 backend "gcs" {
   bucket  = "bucketformterrf"
   prefix  = "terraform/state"
 }
}