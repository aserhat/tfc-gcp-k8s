variable "gcp_creds" {}

variable "server_name_prefix" {
  type = "string"
}

variable "server_count" {
  type = "string"
}
variable "server_machine_type" {
  type = "string"
}

variable = "machine_tags" {
  type = list(string)
  default = []
}
