
resource "aws_route_table" "public_table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "public_subnet_1" {
  subnet_id      = aws_subnet.first-public-subnet.id
  route_table_id = aws_route_table.public_table.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = aws_subnet.second-public-subnet.id
  route_table_id = aws_route_table.public_table.id
}