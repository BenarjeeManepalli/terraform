resource "aws_instance" "Web" {
  ami           = var.instance-ami-id
  instance_type = var.instance-name

  tags = {
    Name = "Web_Instance"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.sg-from-port
    to_port          = var.sg-to-port
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}