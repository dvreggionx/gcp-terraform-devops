variable "project_id" {
  description = "El ID del proyecto de GCP"
}

variable "region" {
  description = "La región de GCP para desplegar los recursos"
  default     = "us-central1"
}

variable "public_subnet_1_range" {
  description = "Rango de IP para la subred pública 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_range" {
  description = "Rango de IP para la subred pública 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_range" {
  description = "Rango de IP para la subred privada 1"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_range" {
  description = "Rango de IP para la subred privada 2"
  type        = string
  default     = "10.0.4.0/24"
}
