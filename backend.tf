terraform {
  backend "gcs" {
    bucket = "terraform_bootstrap_states"
    prefix = "gitlab"
    credentials = "londonuk-890120be22b4.json"
  }
}