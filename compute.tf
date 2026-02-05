resource "aws_instance" "strapi" {
  ami                    = "ami-0ff5003538b60d5ec"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private[0].id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = aws_key_pair.this.key_name

  associate_public_ip_address = false
  user_data = file("user_data.sh")

  tags = {
    Name = "${var.project_name}-strapi"
  }
}
