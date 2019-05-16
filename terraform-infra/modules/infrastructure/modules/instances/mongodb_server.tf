locals {
  db_subnet = [
    "${var.private-a-subnet-id}",
    "${var.private-b-subnet-id}",
  ]
}

resource "aws_instance" "mongodb" {
  count = "1"

  ami           = "${data.aws_ami.mongodb-ami.id}"
  instance_type = "t2.medium"

  subnet_id = "${element(local.db_subnet, count.index)}"

  vpc_security_group_ids = [
    "${aws_security_group.web.id}",
  ]

  key_name = "${aws_key_pair.id_dummy.key_name}"

  tags {
    environment = "${var.environment}"
    Name = "mongodb-server"
  }
}
