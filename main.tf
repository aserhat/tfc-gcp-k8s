provider "google" {
  credentials = "${var.gcp_creds}"
  project     = "symmetry-cloud"
  region      = "us-central1"
  zone        = "us-central1-c"
}

module "etcd" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "etcd"
  server_count = 1
  server_machine_type = "f1-micro"
}

module "masters" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "masters"
  server_count = 1
  server_machine_type = "f1-micro"
}

module "nodes" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "nodes"
  server_count = 1
  server_machine_type = "f1-micro"
}
