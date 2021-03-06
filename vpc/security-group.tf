resource "aws_security_group" "allow-ozwvpc2-ssh" {
  name        = "allow-ozwvpc2-ssh"
  description = "allow-ozwvpc2-ssh"
  vpc_id      = aws_vpc.ozw-vpc-2.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["111.108.18.213/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ozwvpc2-ssh"
  }
}
