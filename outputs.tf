output "Instance-public_ip-when-no-EIP-associate" {
  value = "${aws_instance.web.public_ip}"
}

output "EIP-address-real-when-EIP-associated" {
  value = "${aws_eip.ec2.public_ip}"
}
