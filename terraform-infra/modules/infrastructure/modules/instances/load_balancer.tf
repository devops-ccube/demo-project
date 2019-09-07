resource "aws_alb" "web" {
  name            = "web-${var.environment}"
  internal        = false
  security_groups = ["${aws_security_group.web-alb.id}"]
  subnets         = "${local.subnets_ids}"

  tags= {
    environment = "${var.environment}"
  }
}

resource "aws_alb" "service" {
  name            = "service-${var.environment}"
  internal        = true
  security_groups = ["${aws_security_group.web-alb.id}"]
  subnets         = "${local.private_subnet}"

  tags ={
    environment = "${var.environment}"
  }
}

resource "aws_alb_target_group" "web" {
  name     = "web-target-group-${var.environment}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${var.vpc-id}"
}

resource "aws_alb_target_group" "service" {
  name     = "service-target-group-${var.environment}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${var.vpc-id}"
}

resource "aws_alb_listener" "web" {
  load_balancer_arn = "${aws_alb.web.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.web.arn}"
    type             = "forward"
  }
}

resource "aws_alb_listener" "service" {
  load_balancer_arn = "${aws_alb.service.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.service.arn}"
    type             = "forward"
  }
}

resource "aws_alb_target_group_attachment" "web" {
  count = "${var.ec2-count}"

  target_group_arn = "${aws_alb_target_group.web.arn}"
  target_id        = "${element(aws_instance.web.*.id, count.index)}"
  port             = 3000
}

resource "aws_alb_target_group_attachment" "service" {
  count = "${var.ec2-count}"

  target_group_arn = "${aws_alb_target_group.service.arn}"
  target_id        = "${element(aws_instance.service.*.id, count.index)}"
  port             = 3000
}