resource "aws_instance" "my-tf-server" {
  ami           = "ami-018ba43095ff50d08"
  instance_type = "t2.micro"
}

#resource "aws_instance" "my-tf-server-2" {  
#  provider      =  aws.aws-west-1  # combination of providor name in version.tf file and alias name of aws cli profile 
#  ami           = "ami-018ba43095ff50d08" # provide here same region ami id
#  instance_type = "t2.micro"
#}

