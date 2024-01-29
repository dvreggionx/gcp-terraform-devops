variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The GCP region to deploy the resources"
  default     = "us-central1"
}

variable "public_subnet_1_range" {
  description = "IP range for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_range" {
  description = "IP range for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_range" {
  description = "IP range for private subnet 1"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_range" {
  description = "IP range for private subnet 2"
  type        = string
  default     = "10.0.4.0/24"
}