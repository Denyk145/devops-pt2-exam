
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_vpc" "exam_vpc" {
  name        = var.vpc_name
  region      = var.region
  ip_range    = var.vpc_ip_range
  description = "VPC for DevOps exam resources"
}

resource "digitalocean_ssh_key" "exam_key" {
  name       = "${var.droplet_name}-ssh-key"
  public_key = var.ssh_public_key
}

resource "digitalocean_droplet" "exam_node" {
  name     = var.droplet_name
  region   = var.region
  size     = var.droplet_size
  image    = var.droplet_image
  vpc_uuid = digitalocean_vpc.exam_vpc.id

  ssh_keys = [digitalocean_ssh_key.exam_key.fingerprint]

  tags = ["exam", "stasiv"]
}

resource "digitalocean_firewall" "exam_firewall" {
  name        = var.firewall_name
  droplet_ids = [digitalocean_droplet.exam_node.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8000"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8001"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8002"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "8003"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_spaces_bucket" "exam_bucket" {
  name   = var.exam_bucket_name
  region = var.region
  acl    = "private"
}