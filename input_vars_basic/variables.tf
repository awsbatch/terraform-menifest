#variable "aws-ami" {}
#variable "intance-type" {}
#variable "az" {}

variable "aws-ami" {
    description = "This is for ec2 instance image"
    type = string
    default = "ami-023c11a32b0207432"
}
variable "intance-type" {
    description = "this field use for instance type"
    type = string
    default = "t2.micro"
}
variable "az" {
    description = "this field for region in which region you want spin you servers"
    type = string
    default = "us-east-1b"
}

/*
export TF_VARS_instance-type=t2.micro
export TF_VARS_az=us-east-1a

*/
