provider "google" {
    credentials = "${file("${var.auth_file}")}"
    project = "${var.project}"
    region = "${var.region}"
}

terraform {
  backend "gcs" {
    bucket = "terraform_bootstrap_states"
    prefix = "gitlab/default.tfstate"
    credentials = "${file("${var.auth_file}")}"
  }
}