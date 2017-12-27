provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "testbox0" {
  ami = "ami-5cd4a126"
  instance_type = "t2.micro"
} 