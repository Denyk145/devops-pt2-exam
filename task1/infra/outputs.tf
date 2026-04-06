output "droplet_ip" {
  description = "Public IPv4 of the droplet"
  value       = digitalocean_droplet.node.ipv4_address
}

output "droplet_name" {
  description = "Droplet name"
  value       = digitalocean_droplet.node.name
}

output "vpc_name" {
  description = "VPC name"
  value       = digitalocean_vpc.main.name
}

output "firewall_name" {
  description = "Firewall name"
  value       = digitalocean_firewall.main.name
}