# 1 Create EC2 Instances

resource "aws_instance" "my-tf-server" {
  ami               = "ami-018ba43095ff50d08"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1d"
  count             = "2"
}

/*resource "aws_instance" "server-2" {
  ami           = "ami-018ba43095ff50d08"
  instance_type = "t2.micro"
}*/



