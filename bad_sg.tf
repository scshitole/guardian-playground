resource "aws_security_group_rule" "bad1" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]   # <-- Guardian should flag this
}
