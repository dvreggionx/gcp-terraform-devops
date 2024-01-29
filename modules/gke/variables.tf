variable "region" {
  description = "The region where the GKE cluster will be deployed"
}

variable "vpc_id" {
  description = "The ID of the VPC where the GKE cluster will be deployed"
}

variable "service_account_email" {
  description = "The Service Account email for GKE nodes"
}

variable "initial_node_count" {
  description = "Initial number of nodes in the default pool"
}

variable "machine_type" {
  description = "The machine type of the cluster nodes"
  default     = "e2-medium"
}

variable "subnetwork_id" {
  description = "The ID of the subnet where the GKE cluster will be deployed"
}


variable "min_node_count" {
  description = "Minimum number of nodes in the node group for autoscaling"
  type        = number
}

variable "max_node_count" {
  description = "Maximum number of nodes in the node group for autoscaling"
  type        = number
}

variable "daily_maintenance_window_start_time" {
  description = "Daily maintenance window start time (HH:MM format)"
  type        = string
  default     = "03:00"
}

variable "cluster_version" {
  description = "The version of the GKE cluster to deploy"
  type        = string
  default     = "1.27.3-gke.100"
}