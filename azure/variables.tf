variable "application" {
	description = "The application name for the deployment."
	type        = string
	default     = "Hello"
	validation {
	condition     = length(var.application) > 2
	error_message = "The application name must be longer than two characters."
	}
}


variable "region" {
	description = "The Azure region to deploy resources into."
	type        = string

	validation {
		condition = contains([
		"eastus",
		"eastus2",
		"centralus",
		"northcentralus",
		"southcentralus",
		"westus",
		"westus2",
		"westus3"
		], var.region)
		error_message = "The region must be one of the allowed US regions: eastus, eastus2, centralus, northcentralus, southcentralus, westus, westus2, westus3."
		}
}
