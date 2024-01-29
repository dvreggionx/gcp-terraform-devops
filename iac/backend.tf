terraform {
  backend "gcs" {
    bucket = "gcp-terraform-devops-tf-state"
    prefix = "terraform/state"
  }
}
