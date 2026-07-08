variable "project_name" {
  type    = string
  default = "mosa-hello-demo"
}

variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.10.48.0/20"
}

variable "container_port" {
  type    = number
  default = 80
}

variable "container_image_tag" {
  type    = string
  default = "plain-text"
}

# Tag used when pushing the image into ECR and when ECS pulls it
variable "image_tag" {
  type    = string
  default = "v1"
}

variable "task_cpu" {
  type    = number
  default = 256
}

variable "task_memory" {
  type    = number
  default = 512
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "client_id_secret" {
  description = "Value for the CLIENT_ID secret injected into the container via Secrets Manager"
  type        = string
  sensitive   = true
  default     = "my-placeholder-client-id"
}
