module "etcd" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "etcd"
  server_count = 1
  server_machine_type = "f1-micro"
  gcp_creds = "${var.gcp_creds}"
}

module "masters" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "masters"
  server_count = 1
  server_machine_type = "f1-micro"
  gcp_creds = "${var.gcp_creds}"
}

module "nodes" {
  source       = "./modules/create-gce-vm"
  server_name_prefix  = "nodes"
  server_count = 1
  server_machine_type = "f1-micro"
  gcp_creds = "${var.gcp_creds}"
}
