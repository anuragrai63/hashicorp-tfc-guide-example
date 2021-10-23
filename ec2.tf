provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myawsserver" {
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.nano"
  
  tags = {
    Name = "anurag-instance-v1"
    env = "test"
  }
}

output "Public-IP" {
 value = aws_instance.myawsserver.public_ip
}
