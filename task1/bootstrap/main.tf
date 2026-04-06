
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_spaces_bucket" "tfstate" {
  name   = var.bucket_name
  region = var.region
  acl    = "private"
}