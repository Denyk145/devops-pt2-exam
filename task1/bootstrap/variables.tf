variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "spaces_access_key_id" {
  description = "DigitalOcean Spaces access key id"
  type        = string
  sensitive   = true
}

variable "spaces_secret_access_key" {
  description = "DigitalOcean Spaces secret access key"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Spaces bucket name for terraform state"
  type        = string
  default     = "stasiv-bucket"
}

variable "bucket_region" {
  description = "Spaces bucket region"
  type        = string
  default     = "fra1"
}

variable "bucket_acl" {
  description = "Bucket ACL"
  type        = string
  default     = "private"
}

variable "ssh_key_name" {
  description = "SSH key name in DigitalOcean"
  type        = string
  default     = "stasiv-exam-key"
}

variable "public_key" {
  description = "Public SSH key content"
  type        = string
}