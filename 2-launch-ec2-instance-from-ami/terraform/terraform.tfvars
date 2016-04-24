# General
name   = "2-launch-ec2-instance-from-ami"
region = "ap-northeast-1"

# VPC
vpc_cidr      = "172.16.0.0/16"
az            = "ap-northeast-1a"
public_subnet = "172.16.0.0/24"

# EC2
web_instance_type   = "t2.micro"
