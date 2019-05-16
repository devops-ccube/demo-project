data "aws_ami" "webapp-ami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["webapp-ami"]
 }
 owners = ["544620369291"]
}

data "aws_ami" "bastion-ami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["bastion-ami"]
 }
 owners = ["544620369291"]
}

data "aws_ami" "ansible-control-ami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["ansible-control-ami"]
 }
 owners = ["544620369291"]
}

data "aws_ami" "mongodb-ami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["mongodb-ami"]
 }
 owners = ["544620369291"]
}