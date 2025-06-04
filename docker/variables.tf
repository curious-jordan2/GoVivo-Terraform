variable "application" {
	description = "The application name for the deployment."
	type        = string
	default     = "ExampleApp"
	validation {
	condition     = length(var.application) > 2
	error_message = "The application name must be longer than two characters."
	}
}

variable "image" {
	description = "The Docker image to use for the container"
	type        = string
	default     = "ubuntu:20.04"

	validation {
    condition = contains([
		"ubuntu:20.04",
		"ubuntu:22.04",
		"mcr.microsoft.com/windows/servercore:ltsc2022",
		"mcr.microsoft.com/windows/servercore:ltsc2019"
    ], var.image)
    error_message = "The image must be one of: ubuntu:20.04, ubuntu:22.04, mcr.microsoft.com/windows/servercore:ltsc2022, or mcr.microsoft.com/windows/servercore:ltsc2019"
	}
}

variable "container_name" {
	description = "The container name for the deployment."
	type        = string
	default     = "example_container_name"
	validation {
	condition     = length(var.container_name) > 2
	error_message = "The container name must be longer than two characters."
	}
}