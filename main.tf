<<<<<<< HEAD
resource "aws_s3_bucket" "mybucket" { 
  bucket = "vedi1-s3-bucket"
=======
# main.tf (ROOT)

provider "aws" {
  region = var.aws_region
  alias  = "aws_provider"
}

provider "azurerm" {
  alias   = "azure_provider"  # <--- This alias is required to use in the module
  features {}
}

module "ec2_instance" {
  source = "./modules/aws_ec2"

  providers = {
    aws = aws.aws_provider
  }

  aws_region        = var.aws_region
  aws_ami           = var.aws_ami
  aws_instance_type = var.aws_instance_type
}

module "azure_vm" {
  source = "./modules/azure_vm"

  providers = {
    azurerm = azurerm.azure_provider
  }

  azure_location       = var.azure_location
  azure_vm_size        = var.azure_vm_size
  azure_ssh_public_key = var.azure_ssh_public_key
>>>>>>> 92e47ed (multi cloud terraform file)
}
