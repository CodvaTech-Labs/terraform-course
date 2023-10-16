provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_demo" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  tags = {
    Name = "Created_By_Terraform"
  }
}