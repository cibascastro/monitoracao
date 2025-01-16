 "postgres" {
  image = docker_image.postgres.name
  name  = var.container_name

  ports {
    internal = var.postgres_port
    external = var.postgres_port
  }

  env = [
    "POSTGRES_USER=${var.postgres_user}",
    "POSTGRES_PASSWORD=${var.postgres_password}"
  ]

  volumes {
    host_path      = "/root/terraform_postgres_v7/data"
    container_path = "/var/lib/postgresql/data"
  }
}

module "configure_postgres" {
  source          = "./module2"
  container_name  = docker_container.postgres.name
}