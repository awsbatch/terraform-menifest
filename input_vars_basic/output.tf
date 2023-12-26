output "server-name" {
  description = "it will show you server name"
#  value = aws_instance.ravendra-server ## it will display all attributes related to server
#  value = aws_instance.ravendra-server.* ## same as above
  value = aws_instance.ravendra-server.key_name
}

output "Public-IP" {
  description = "it will show you server name"
//  value = aws_instance.ravendra-server ## it will display all attributes related to server
//  value = aws_instance.ravendra-server.* ## same as above
  value = aws_instance.ravendra-server.public_ip
}

output "Instance-type" {
  description = "it will show you server name"
//  value = aws_instance.ravendra-server ## it will display all attributes related to server
//  value = aws_instance.ravendra-server.* ## same as above
  value = aws_instance.ravendra-server.instance_type
}

output "Tags" {
  description = "it will show you server name"
//  value = aws_instance.ravendra-server ## it will display all attributes related to server
//  value = aws_instance.ravendra-server.* ## same as above
  value = aws_instance.ravendra-server.tags_all
}
