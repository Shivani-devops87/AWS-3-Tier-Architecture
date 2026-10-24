variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "public_ami" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0123456789abcdef0"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "your-key-name"
}

variable "db_password" {
  description = "DB master password (supply at runtime)"
  type        = string
  sensitive   = true
  default     = "db_password_here"
}
