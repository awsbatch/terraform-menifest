resource "aws_instance" "ravendra-server" {
  ami               = var.aws-ami      //"ami-023c11a32b0207432"   # redhat
  instance_type     = var.intance-type //"t2.micro"
  availability_zone = var.az           //"office"
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
    "Name"   = "my-ec2-server"
    "org-id" = "123456"
    "owner"  = "ravendra"
  }
}

