#Resource 1:  Create custom vpc 

resource "aws_vpc" "custom_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name"   = "vpc-1"
    "author" = "ravendra"
    "Org-id" = "282006"
  }
}


# Resource 2: Create subnets

resource "aws_subnet" "public-subnet-1" {
  cidr_block              = "10.0.0.0/24"
  vpc_id                  = aws_vpc.custom_vpc.id
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

}

# Resuorce 3: Create Internet Gateway
resource "aws_internet_gateway" "custom-igw" {
  vpc_id = aws_vpc.custom_vpc.id
}

# Resource 4: Create custom route table
resource "aws_route_table" "Public-RT" {
  vpc_id = aws_vpc.custom_vpc.id

}

# Resource 5 : Create Route in Route talbe for IGW
resource "aws_route" "igw-route" {
  route_table_id         = aws_route_table.Public-RT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.custom-igw.id
}
# Resource 6 : Associate Route table with subnet
resource "aws_route_table_association" "public_route_table_association" {
  route_table_id = aws_route_table.Public-RT.id
  subnet_id      = aws_subnet.public-subnet-1.id

}

# Resource 7: Create Security group
resource "aws_security_group" "dev-server-sg" {
  name        = "Public-Server-SG"
  description = "This security group is for Public server only"
  vpc_id      = aws_vpc.custom_vpc.id

  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all traffic from outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

