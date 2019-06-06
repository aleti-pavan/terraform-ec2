output "publicIp" {
    value = "${aws_instance.ec2.*.public_ip}"
}

output "Login directly" {
    value = "ssh ec2-user@${aws_instance.ec2.0.public_ip}"
}

output "Login with Key" {
    value = "ssh -i ${aws_key_pair.sshkey.key_name} ec2-user@${aws_instance.ec2.0.public_ip}"
}