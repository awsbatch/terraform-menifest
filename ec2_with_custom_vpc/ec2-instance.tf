resource "aws_instance" "ravendra-server" {
  ami               = "ami-018ba43095ff50d08"
  instance_type     = "t2.micro"
  key_name = "office"
  subnet_id = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-server-sg.id,]
# count = 4
# user_data = file("abc.sh")
  user_data = <<EOF
  #!/bin/bash
  sudo yum update -y
  sudo yum install httpd -y
  sudo systemctl enable httpd
  sudo systemctl start httpd
  echo "<h1> Welcome to ! AWS Infra Created using Terraform in us-east-1 Region </h1>" > /var/www/html/index.html
  EOF
  tags = {
    "Name" = "my-ec2-server"
    "org-id" = "123456"
    "owner" = "ravendra"
  } 
}


