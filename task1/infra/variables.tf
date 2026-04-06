variable "do_token" {
  description = "DigitalOcean API token"
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
  description = "VPC CIDR range"
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
  description = "Droplet size for Minikube/Kubernetes"
  type        = string
  default     = "s-4vcpu-8gb"
}

variable "image" {
  description = "Droplet OS image"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "ssh_key_name" {
  description = "SSH key name in DigitalOcean"
  type        = string
  default     = "stasiv-exam-key"
}

variable "bucket_name" {
  description = "Bucket name"
  type        = string
  default     = "stasiv-bucket"
}