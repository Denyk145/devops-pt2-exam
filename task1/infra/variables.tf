
variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "Public SSH key for Droplet access"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "fra1"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "stasiv-vpc"
}

variable "vpc_ip_range" {
  description = "VPC CIDR"
  type        = string
  default     = "10.10.10.0/24"
}

variable "firewall_name" {
  description = "Firewall name"
  type        = string
  default     = "stasiv-firewall"
}

variable "droplet_name" {
  description = "Droplet name"
  type        = string
  default     = "stasiv-node"
}

variable "droplet_size" {
  description = "Droplet size"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "droplet_image" {
  description = "Droplet image slug"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "exam_bucket_name" {
  description = "Exam bucket name"
  type        = string
  default     = "stasiv-bucket"
}