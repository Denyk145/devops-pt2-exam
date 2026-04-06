terraform {
  backend "s3" {
    bucket                      = "stasiv-bucket"
    key                         = "task1/terraform.tfstate"
    region                      = "us-east-1"
    endpoint                    = "https://fra1.digitaloceanspaces.com"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = false
    use_lockfile                = true
  }
}