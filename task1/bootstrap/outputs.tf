output "bucket_name" {
  description = "Created Spaces bucket name"
  value       = digitalocean_spaces_bucket.tfstate.name
}

output "bucket_region" {
  description = "Created Spaces bucket region"
  value       = digitalocean_spaces_bucket.tfstate.region
}

output "ssh_key_name" {
  description = "Created SSH key name"
  value       = digitalocean_ssh_key.exam_key.name
}

output "ssh_key_id" {
  description = "Created SSH key id"
  value       = digitalocean_ssh_key.exam_key.id
}