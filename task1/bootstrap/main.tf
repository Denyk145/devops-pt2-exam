data "digitalocean_ssh_key" "exam_key" {
  name = var.ssh_key_name
}

data "digitalocean_spaces_bucket" "tfstate" {
  name   = var.bucket_name
  region = var.bucket_region
}