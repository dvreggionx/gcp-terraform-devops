resource "google_compute_network" "vpc" {
  name                    = "mi-vpc"
  auto_create_subnetworks = false
  project                 = var.project_id
}

# Subredes Públicas
resource "google_compute_subnetwork" "public_subnet_1" {
  name          = "public-subnet-1"
  ip_cidr_range = var.public_subnet_1_range
  region        = var.region
  network       = google_compute_network.vpc.name
}

resource "google_compute_subnetwork" "public_subnet_2" {
  name          = "public-subnet-2"
  ip_cidr_range = var.public_subnet_2_range
  region        = var.region
  network       = google_compute_network.vpc.name
}

# Subredes Privadas
resource "google_compute_subnetwork" "private_subnet_1" {
  name                     = "private-subnet-1"
  ip_cidr_range            = var.private_subnet_1_range
  region                   = var.region
  network                  = google_compute_network.vpc.name
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "private_subnet_2" {
  name                     = "private-subnet-2"
  ip_cidr_range            = var.private_subnet_2_range
  region                   = var.region
  network                  = google_compute_network.vpc.name
  private_ip_google_access = true
}

# Cloud NAT para permitir que las subredes privadas accedan a Internet
resource "google_compute_router" "router" {
  name    = "mi-router"
  region  = var.region
  network = google_compute_network.vpc.name
}

resource "google_compute_router_nat" "nat" {
  name                               = "mi-nat"
  router                             = google_compute_router.router.name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
