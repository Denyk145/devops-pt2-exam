
output "tfstate_bucket_name" {
  description = "Name of the tfstate bucket"
  value       = digitalocean_spaces_bucket.tfstate.name
}

output "tfstate_bucket_region" {
  description = "Region of the tfstate bucket"
  value       = digitalocean_spaces_bucket.tfstate.region
}

output "tfstate_backend_endpoint" {
  description = "S3-compatible endpoint for Terraform backend"
  value       = "https://${var.region}.digitaloceanspaces.com"
}

output "tfstate_example_key" {
  description = "Example state key for infra"
  value       = "terraform/infra.tfstate"
}