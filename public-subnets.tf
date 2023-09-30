resource "aws_subnet" "first-public-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "second-public-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "public-2"
  }
}