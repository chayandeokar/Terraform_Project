# how to use aws cloud to
terraform {
  required_providers {
    myawscloud = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}


# auth to aws cloud
provider "myawscloud" {
	region = "ap-south-1"
	access_key = " "
	secret_key = " "
}

resource "aws_instance" "newec2" {
    ami = "ami-02e94b011299ef128"
    instance_type = "t2.micro"
    user_data = file("index.sh")
    tags = {
        "Name" = "Ec2instance"
    }
  
}
