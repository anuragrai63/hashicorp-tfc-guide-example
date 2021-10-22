provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myawsserver" {
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.nano"
  
  tags = {
    Name = "anurag-instance"
    env = "test"
  }
}

output "Private-IP" {
 value = aws_instance.myawsserver.private_ip
}
