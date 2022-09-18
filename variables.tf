variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "ubuntu_ami" {
  type        = string
  description = "ami"
  default     = "ami-052efd3df9dad4825"
}
variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}

variable "sg_name" {
  type        = string
  description = "name of the security group"
  default     = "HTTPD-docker_sg"
}

variable "sg_desc" {
  type        = string
  description = "sg for HTTPD"
  default     = "HTTPD-docker_sg"
}
variable "proto" {
  type        = string
  description = "protocol"
  default     = "tcp"
}
variable "dock1_desc" {
  type        = string
  description = "opens port 80"
  default     = "opens port 80"
}
variable "dock1_port" {
  type        = string
  description = "opens port 80"
  default     = "80"
}
variable "dock2_desc" {
  type        = string
  description = "open port 8080"
  default     = "open port 8080"
}
variable "dock2_port" {
  type        = string
  description = "custom port 8080"
  default     = "8080"
}
variable "ssh_desc" {
  type        = string
  description = "for ssh"
  default     = "for ssh"
}
variable "dock3_port" {
  type        = string
  description = "opens SSH"
  default     = "22"
}
variable "public_key" {
  type        = string
  description = "public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvmsOjnJGPCpr9Ul9B8/fUgz+SV/OgC818owEdLxqCsavcdxtMjaDZSmWg1IAfWEbdsBFMM9/Z2zqoNH/uidmqy1yc72SszRS+nh/Z4jik9ArpGwW2t0m7NyP1woctan0ImC3avY7Ra0Uy8FKqPYjhsqIjw+zXxeHUVEXnCjZqwofQSFXFqHdE/Zu68i6TddUfUiH/gyoFRvvaSz7SK5eRQZPlgP2j98XaXVplNVsrZfovdnChHoiKJx3jugY/Ny8L80kTtAjt++wnZgXL/zWZ7jSeWJWlFQK/iJEHptfKdknKYlfgt8hCtCV8YpafxxKVyzNpAwMARB56zRwLJmzYl+QT08NRZCmEHxisP/oW3/YWvb7K5Dt0yMsKaSzQAy1Ob2EY1H/YO7PzhcWupZwmb0NZ4YdnyLPm0TTIV2mzIPRR6wxVkqZS02yU3V/HCpNqB6Y0I5VZcobVCiLVoeYXbRZAUWsCyPM4wDzwIIXlrGkWR2xKby+pduTMfk+dxWM= prashantgupta@Prashants-MacBook-Pro.local"
}

variable "key_name" {
  type        = string
  description = "keyname"
  default     = "HTTPDKey"
}
