variable "postgres_user" {
  description = "PostgreSQL username"
  type        = string
}

variable "postgres_password" {
  description = "PostgreSQL password"
  type        = string
}

variable "postgres_port" {
  description = "PostgreSQL port"
  type        = number
 }

variable "container_name" {
  description = "Docker container name"
  type        = string
}