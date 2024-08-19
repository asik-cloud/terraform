resource "aws_instance" "master" {

    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "Master"
      ENV = "dev"
    }
  
}



output "public_ip" {

    value = aws_instance.master.public_ip
  
}

output "private_ip" {

    value = aws_instance.master.private_ip
  
}

output "tags" {

    value = aws_instance.master.tags
  
}