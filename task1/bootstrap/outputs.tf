output "bucket_name" {
  description = "Existing Spaces bucket name"
  value       = data.digitalocean_spaces_bucket.tfstate.name
}

output "bucket_region" {
  description = "Existing Spaces bucket region"
  value       = data.digitalocean_spaces_bucket.tfstate.region
}

output "ssh_key_name" {
  description = "Existing SSH key name"
  value       = data.digitalocean_ssh_key.exam_key.name
}

output "ssh_key_id" {
  description = "Existing SSH key id"
  value       = data.digitalocean_ssh_key.exam_key.id
}