
output "vpc_id" {
  value = digitalocean_vpc.exam_vpc.id
}

output "vpc_name" {
  value = digitalocean_vpc.exam_vpc.name
}

output "droplet_id" {
  value = digitalocean_droplet.exam_node.id
}

output "droplet_name" {
  value = digitalocean_droplet.exam_node.name
}

output "droplet_public_ip" {
  value = digitalocean_droplet.exam_node.ipv4_address
}

output "droplet_private_ip" {
  value = digitalocean_droplet.exam_node.ipv4_address_private
}

output "firewall_id" {
  value = digitalocean_firewall.exam_firewall.id
}

output "exam_bucket_name" {
  value = digitalocean_spaces_bucket.exam_bucket.name
}