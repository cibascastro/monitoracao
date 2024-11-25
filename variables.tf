variable "container_name" {
  description = "Name of the Postgres container"
  type        = string
  default     = "postgres-container"
}

variable "postgres_port" {
  description = "Port for Postgres"
  type        = number
  default     = 5433
}

variable "postgres_user" {
  description = "Postgres user"
  type        = string
  default     = "postgres_sa"
}

variable "postgres_password" {
  description = "Postgres password"
  type        = string
  default     = "Asd@1234@zxc"
}
