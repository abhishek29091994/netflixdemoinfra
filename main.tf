provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-08fe5144e4659a3b3"
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sg-0c14d574de1689d09"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins-1", "tomcat-3", "tomcat-4", "Monitoring server-1"]
}
