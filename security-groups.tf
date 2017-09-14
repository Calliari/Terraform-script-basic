resource "aws_security_group" "websg" {
  name = "security_group_for_web_server"
  vpc_id = "${aws_vpc.vpc.id}"
  # description = "${var.account_name} Security Group for web servers"
  description = "Security Group for Vault"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    # cidr_blocks = ["${var.Subnet-Public-AzA-CIDR}"]
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    # Account = "${var.account_name}"
    Name = "Security-group-Vault"
  }
}
