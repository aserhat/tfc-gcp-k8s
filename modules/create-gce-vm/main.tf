resource "google_compute_instance" "vm_instance" {
  count        = "${var.server_count}"
  name         = "${var.server_name_prefix}-0${count.index}"
  machine_type = "${var.server_machine_type}"
  allow_stopping_for_update = true

  tags = "${var.machine_tags}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config = {}
  }
}
