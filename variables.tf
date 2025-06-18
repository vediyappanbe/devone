variable "aws_region" {
  default = "us-west-2"
}

variable "aws_ami" {
  default = "ami-05f9478b4deb8d173"
}

variable "aws_instance_type" {
  default = "t2.micro"
}

variable "azure_location" {
  default = "eastus"  # Try this known working region
}

variable "azure_vm_size" {
  default = "Standard_B1s"
}

variable "azure_ssh_public_key" {
  default = "/Users/vediyappank/.ssh/azure_rsa.pub"
}
