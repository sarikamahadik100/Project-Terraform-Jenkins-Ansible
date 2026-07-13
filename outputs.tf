output "control_server_ip" {
  value = aws_instance.MyFirstInstnace[0].private_ip
}

output "remote_server_ips" {
  value = [
    for instance in aws_instance.MyFirstInstnace :
    instance.private_ip
    if instance.tags["Name"] != "Control-Server"
  ]
}
