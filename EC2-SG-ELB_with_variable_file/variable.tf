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
  default = "4"
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
  default = ["i-0f99ab39f19e19a9b", "i-04b297623f3eed0a8", "i-06dcbf9e354d11eff", "i-0a325ba5610164867" ]
}



