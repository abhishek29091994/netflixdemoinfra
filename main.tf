provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-08fe5144e4659a3b3"
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sgr-01912ad2edcfe67d9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
