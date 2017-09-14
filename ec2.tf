resource "aws_instance" "web" {
  ami           = "${var.aws_ami}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.PublicAZA.id}"
  vpc_security_group_ids = ["${aws_security_group.websg.id}"]
  key_name ="${var.key_name}"
  user_data ="${file("scripts/python-install.sh")}"

  tags {
    Name = "EC2-Vault"
  }
}

# Elastic IP address "EIP" associated with web EC2 instance
resource "aws_eip" "ec2" {
  instance = "${aws_instance.web.id}"
  vpc      = true
}
