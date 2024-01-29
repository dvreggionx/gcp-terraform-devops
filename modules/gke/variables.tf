variable "region" {
  description = "La región donde se desplegará el cluster de GKE"
}

variable "vpc_id" {
  description = "El ID de la VPC donde se desplegará el cluster de GKE"
}

variable "service_account_email" {
  description = "El correo electrónico del Service Account para los nodos de GKE"
}

variable "initial_node_count" {
  description = "Número inicial de nodos en el pool predeterminado"
}

variable "machine_type" {
  description = "El tipo de máquina de los nodos del cluster"
  default     = "e2-medium"
}

variable "subnetwork_id" {
  description = "El ID de la subred donde se desplegará el clúster de GKE"
}


variable "min_node_count" {
  description = "Número mínimo de nodos en el grupo de nodos para autoescalado"
  type        = number
}

variable "max_node_count" {
  description = "Número máximo de nodos en el grupo de nodos para autoescalado"
  type        = number
}

variable "daily_maintenance_window_start_time" {
  description = "Hora de inicio de la ventana de mantenimiento diario (formato HH:MM)"
  type        = string
  default     = "03:00"
}

variable "cluster_version" {
  description = "La versión del clúster de GKE a desplegar"
  type        = string
  default     = "1.27.3-gke.100"
}
