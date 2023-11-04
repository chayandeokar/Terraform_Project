terraform {
  required_providers {
    myawscloud = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

resource "aws_instance" "myinstance" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }
