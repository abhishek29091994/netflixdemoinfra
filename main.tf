provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-08fe5144e4659a3b3"
instance_type = "t2.medium"
key_name = "Abhishek1"
vpc_security_group_ids = ["sg-0c14d574de1689d09"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible", "dev-1", "dev2", "test1","test-2"]
}
