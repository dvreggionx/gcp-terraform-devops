resource "google_service_account" "gke_service_account" {
  account_id   = var.account_id
  display_name = "GKE Service Account"
  project      = var.project_id
}