provider "aws" {
  region = "us-east-1"  # or any other desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI ID
  instance_type = "t2.micro"               # Instance type
  tags = {
    Name = "ExampleInstance"                # Instance name
  }
}
