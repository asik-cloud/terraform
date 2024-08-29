resource "aws_instance" "roboshop" {

    count = length(var.instance_names)
    ami = var.ami
    instance_type = var.instance_names[count.index] == "mongodb" ? "t3.medium" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = {
      Name = var.instance_names[count.index]
    }
  
}

resource "aws_route53_record" "r53" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.roboshop[count.index].public_ip : aws_instance.roboshop[count.index].private_ip]
  }

