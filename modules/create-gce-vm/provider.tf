provider "google" {
  credentials = "${var.gcp_creds}"
  project     = "symmetry-cloud"
  region      = "us-central1"
  zone        = "us-central1-c"
}
