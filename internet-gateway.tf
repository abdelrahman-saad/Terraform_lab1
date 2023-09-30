resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "igw-myvpc"
  }
}

# resource "aws_nat_gateway" "private-nat" {
#   subnet_id     = aws_subnet.first-private-subnet.id

#   tags = {
#     Name = "gw NAT"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.gw]
# }