variable "aws_region" {
  default = "us-east-2"
}

variable "profile" {
  default = "MyAWS"
}

variable "ec2_ami" {
  default = "ami-00dfe2c7ce89a450b"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "ec2-class"
}

variable "ec2_count" {
  type = number
  default = "3"
}

variable "environment" {
  default = "terraform"
}

variable "product" {
  default = "test"
}
variable "vpc_id" {
  default = "vpc-034f8ce0c3e575f3a"
}
variable "subnets" {
   default = ["subnet-0881b4ca19bc14788","subnet-04dc57f0376bdb4c4","subnet-0ad545670e3f6d6d6"]
}

variable "inst" {
  default = ["i-038be58891a6ed6da", "i-012d6ede10e2dd4cd" ]
}



