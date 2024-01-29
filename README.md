# GKE Cluster Terraform Configuration

This repository contains Terraform configuration files for deploying a Google Kubernetes Engine (GKE) cluster. The configuration allows for a high degree of customization to suit different deployment needs, including adjustable regional settings, VPC and subnet configurations, node pool specifications, and maintenance preferences.

## Configuration Variables

- `region`: Specifies the Google Cloud region where the GKE cluster will be deployed.
- `vpc_id`: The ID of the VPC within which the GKE cluster will be provisioned.
- `service_account_email`: Defines the Service Account email that will be used by the GKE nodes.
- `initial_node_count`: Sets the initial number of nodes in the cluster's default node pool.
- `machine_type`: Determines the type of machine to be used for the cluster nodes. Default is `e2-medium`.
- `subnetwork_id`: The ID of the subnet where the GKE cluster will be deployed.
- `min_node_count`: The minimum number of nodes for the cluster's node pool, enabling autoscaling.
- `max_node_count`: The maximum number of nodes for the cluster's node pool, enabling autoscaling.
- `daily_maintenance_window_start_time`: Configures the start time for the cluster's daily maintenance window. Default is `03:00`.
- `cluster_version`: Specifies the version of the GKE cluster. Default is `1.27.3-gke.100`.
