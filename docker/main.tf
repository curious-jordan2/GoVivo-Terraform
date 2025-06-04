terraform {
    required_providers {
        docker = {
        source  = "kreuzwerker/docker"
        version = "3.6.0"
        }
    }
    # backend "local" {
    #     path = "C:/Users/jorda/Terraform/terraform.tfstate"
    # }
    # backend "azurerm" {
    #     resource_group_name  = "my-terraform-rg"
    #     storage_account_name = "mytfstatestorage"
    #     container_name       = "tfstate"
    #     key                  = "terraform.tfstate"
    # }
    # backend "s3" {
    #     region = "us-east-1"
    #     key = "terraformsatefile"
    #     bucket = "s3-bucket-name"
    # }
}