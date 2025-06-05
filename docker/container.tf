# Create a container
resource "docker_container" "container" {
    image = docker_image.image.image_id
    name  = var.container_name
    ports {
        internal = 80
        external = var.external_port
        protocol = "tcp"
    }
}