output "publicIp" {
    value = "${aws_instance.ec2.*.public_ip}"
}

output "Login" {
    value = "ssh ec2-user@${aws_instance.ec2.0.public_ip}"
}

output "Login_key" {
    value = "ssh -i ${aws_key_pair.sshkey.key_name} ec2-user@${aws_instance.ec2.0.public_ip}"
}