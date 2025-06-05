# Creat locals
locals {
    network_mode = var.local_os == "windows" ? "nat" : "bridge"
}

# Create a container
resource "docker_container" "container" {
    image = docker_image.image.image_id
    name  = var.container_name
    network_mode = local.network_mode
    ports {
        internal = 80
        external = var.external_port
        protocol = "tcp"
    }
}