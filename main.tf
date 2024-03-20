provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Mayank" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name      = "linuxKeyPair"
}
