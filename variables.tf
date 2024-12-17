variable "container_name" {
  description = "Name of the Postgres container"
  type        = string
}

variable "postgres_port" {
  description = "Port for Postgres"
  type        = number
}

variable "postgres_user" {
  description = "Postgres user"
  type        = string
}

variable "postgres_password" {
  description = "Postgres password"
  type        = string
} 
