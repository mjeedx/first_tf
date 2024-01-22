terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "first_instance" {
  ami           = "ami-02cd6549baea35b55"
  instance_type = "t4g.nano"
  associate_public_ip_address  = true
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  # security_groups = aws_security_group.allow_ssh.id
  key_name = "key"
  tags = {
    Name = "first_instance"
  } 
  user_data = <<EOF
  sudo echo "test-test-test" > /tmp/file.txt
  cat /tmp/file.txt
EOF
}

output "first_instance" {
    value = aws_instance.first_instance.public_ip
}