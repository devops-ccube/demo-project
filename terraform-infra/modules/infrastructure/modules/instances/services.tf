locals {
  private_subnet = [
    "${var.private-a-subnet-id}",
    "${var.private-b-subnet-id}",
  ]
}

resource "aws_instance" "service" {
  count = "${var.ec2-count}"

  ami           = "${data.aws_ami.webapp-ami.id}"
  instance_type = "t2.micro"

  subnet_id = "${element(local.private_subnet, count.index)}"

  vpc_security_group_ids = [
    "${aws_security_group.web.id}",
  ]

  key_name = "${aws_key_pair.id_dummy.key_name}"

  tags ={
    environment = "${var.environment}"
    Name = "services-${count.index}"
  }
}
