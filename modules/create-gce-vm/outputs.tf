output "server_fullname" {
  value = "${google_compute_instance.vm_instance.*.name}"
}
