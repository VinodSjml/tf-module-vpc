resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "roboshop-${var.ENV}-igw"
  }
}

# resource "aws_eip" "ngw_eip" {
#   domain = "vpc"

#   tags = {
#     Name = "roboshop-${var.ENV}-ngw-eip"
#   }
# }

# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.ngw_eip.id
#   subnet_id     = aws_subnet.public_subnet.*.id[0]

#   tags = {
#     Name = "nat gw"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.igw, aws_eip.ngw_eip]
# }
