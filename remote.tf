terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Symmetry"

    workspaces {
      name = "tfc-gcp-k8s"
    }
  }
}
