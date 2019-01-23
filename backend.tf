terraform {
  backend "gcs" {
    bucket = "terraform_bootstrap_states"
    prefix = "gitlab"
    credentials = "${file("${var.auth_file}")}"
  }
}