locals {
  ansible_subnet = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}
resource "aws_instance" "ansible" {
  count = "1"

  ami           = "${data.aws_ami.ansible-control-ami.id}"
  instance_type = "t2.micro"

  subnet_id = "${element(local.ansible_subnet, count.index)}"

  vpc_security_group_ids = [
    "${aws_security_group.web.id}",
  ]

  key_name = "${aws_key_pair.id_dummy.key_name}"

  tags {
    environment = "${var.environment}"
    Name = "ansible-server"

  }
}
