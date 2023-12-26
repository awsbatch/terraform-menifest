#variable "aws-ami" {}
#variable "intance-type" {}
#variable "az" {}

#variable "aws-ami" {
#    description = "This is for ec2 instance image"
#    type = string
#    default = "ami-023c11a32b0207432"
#}
#variable "intance-type" {
#    description = "this field use for instance type"
#    type = string
#    default = "t2.micro"
#    sensitive = true
#}
#variable "az" {
#    description = "this field for region in which region you want spin you servers"
#    type = string
#    default = "us-east-1b"
#}

/*
export TF_VARS_instance-type=t2.micro
export TF_VARS_az=us-east-1a

*/

# list string variable examples

variable "aws-ami" {
  description = "This is for ec2 instance image"
  type        = string
  default     = "ami-023c11a32b0207432"
}
variable "intance-type" {
  description = "this field use for instance type"
  type        = list(string)
  default     = ["t2.micro", "t2.xlarge", "t2.2xlarge"]
  sensitive   = false
}
variable "az" {
  description = "this field for region in which region you want spin you servers"
  type        = string
  default     = "us-east-1b"
}

# Example with map
variable "ec2-server-tags" {
  description = "this is my tag vars"
  type        = map(string)
  default = {
    owner = "ravendra"
    env   = "qa"
    id    = "12345"
  }
}

## Example of validation Rules:
variable "aws-ami-val" {
  description = "This is for ec2 instance image"
  type        = string
  default = "ami-023c11a32b0207432"
  #default = "ama-023c11a32b0207432"
  validation {
    condition     = length(var.aws-ami-val) > 4 && substr(var.aws-ami-val, 0, 4) == "ami-"
    error_message = "This ami id not valid accorging to defined lenth please provide valid AMI"
  }
}
