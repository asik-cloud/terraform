resource "aws_instance" "roboshop" {

    for_each = var.instance_names
    ami = var.ami
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = {
      Name = each.key
    }
  
}

resource "aws_route53_record" "r53" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
  }

