output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "public_subnet_1_id" {
  value = google_compute_subnetwork.public_subnet_1.id
}

output "public_subnet_2_id" {
  value = google_compute_subnetwork.public_subnet_2.id
}

output "private_subnet_1_id" {
  value = google_compute_subnetwork.private_subnet_1.id
}

output "private_subnet_2_id" {
  value = google_compute_subnetwork.private_subnet_2.id
}

output "public_subnet_ids" {
  value = [google_compute_subnetwork.public_subnet_1.id, google_compute_subnetwork.public_subnet_2.id]
}

output "private_subnet_ids" {
  value = [google_compute_subnetwork.private_subnet_1.id, google_compute_subnetwork.private_subnet_2.id]
}
