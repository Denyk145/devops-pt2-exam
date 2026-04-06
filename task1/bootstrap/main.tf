resource "digitalocean_spaces_bucket" "tfstate" {
  name   = var.bucket_name
  region = var.bucket_region
  acl    = var.bucket_acl

  versioning {
    enabled = true
  }
}

resource "digitalocean_ssh_key" "exam_key" {
  name       = var.ssh_key_name
  public_key = var.public_key
}