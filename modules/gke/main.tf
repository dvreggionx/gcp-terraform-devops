# main.tf

resource "google_container_cluster" "gke_cluster" {
  name               = "mi-cluster-gke"
  location           = var.region
  network            = var.vpc_id
  subnetwork         = var.subnetwork_id
  min_master_version = var.cluster_version
  ip_allocation_policy {}

  maintenance_policy {
    daily_maintenance_window {
      start_time = var.daily_maintenance_window_start_time
    }
  }

  node_pool {
    name       = "default-pool"
    node_count = var.initial_node_count

    management {
      auto_repair  = true
      auto_upgrade = true
    }

    autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
    }

    node_config {
      service_account = var.service_account_email
      preemptible     = true
      machine_type    = var.machine_type

      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring"
      ]
    }
  }
}
