resource "aws_security_group" "ssh_access" {
  name        = "ssh-access"
  vpc_id = aws_vpc.myvpc.id  

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}

# 2nd group
resource "aws_security_group" "ssh-port-3000" {
  name        = "ssh-port-3000"
  vpc_id = aws_vpc.myvpc.id  

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.myvpc.cidr_block]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.myvpc.cidr_block]
  }
  
# egress {
#   from_port   = 0
#   to_port     = 0
#   protocol    = "-1"
#   cidr_blocks = ["0.0.0.0/0"]
# }

}