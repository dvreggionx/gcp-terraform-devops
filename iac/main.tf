provider "google" {
  project = "composable-412622"
  region  = "us-central1"
}

module "mi_vpc" {
  source                 = "../modules/vpc"
  project_id             = "composable-412622"
  region                 = "us-central1"
  public_subnet_1_range  = "10.1.1.0/24"
  public_subnet_2_range  = "10.1.2.0/24"
  private_subnet_1_range = "10.1.3.0/24"
  private_subnet_2_range = "10.1.4.0/24"
}

module "service_account_gke" {
  source     = "../modules/service_account"
  account_id = "gke-sa"
  project_id = "composable-412622"
}

module "mi_gke_cluster" {
  source                              = "../modules/gke"
  region                              = "us-central1-a"
  vpc_id                              = module.mi_vpc.vpc_id
  subnetwork_id                       = module.mi_vpc.private_subnet_1_id
  service_account_email               = module.service_account_gke.service_account_email
  machine_type                        = "e2-small"
  initial_node_count                  = 1
  min_node_count                      = 1
  max_node_count                      = 2
  daily_maintenance_window_start_time = "03:00"
  cluster_version                     = "1.27.3-gke.100"
}
