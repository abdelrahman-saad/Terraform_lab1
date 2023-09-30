resource "aws_subnet" "first-private-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "second-private-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "private-2"
  }
}