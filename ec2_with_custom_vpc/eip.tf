resource "aws_eip" "my-eip" {
  instance = aws_instance.ravendra-server.id
  #vpc = true
  #meta arguments
  depends_on = [aws_internet_gateway.custom-igw]
}
