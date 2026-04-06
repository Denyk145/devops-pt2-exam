variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Bucket name for Terraform remote state"
  type        = string
  default     = "stasiv-tfstate"
}

variable "region" {
  description = "DigitalOcean region for Spaces bucket"
  type        = string
  default     = "fra1"
}