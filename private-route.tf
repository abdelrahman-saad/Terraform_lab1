
resource "aws_route_table" "private_table" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table_association" "private_subnet_1" {
  subnet_id      = aws_subnet.first-private-subnet.id
  route_table_id = aws_route_table.private_table.id
}

resource "aws_route_table_association" "private_subnet_2" {
  subnet_id      = aws_subnet.second-private-subnet.id
  route_table_id = aws_route_table.private_table.id
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_table.id  # Replace with your private subnet's route table ID
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}