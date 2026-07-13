locals {
  public_key = file("${path.module}/id_ed25519.pub")
}

resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

 key_name = "ansible-key"

  # Install Ansible only on the first instance
  user_data = count.index == 0 ? file("${path.module}/ansible-install.sh") : null

  tags = {
    Name = count.index == 0 ? "Control-Server" : "Remote-Server-${count.index}"
  }
}
