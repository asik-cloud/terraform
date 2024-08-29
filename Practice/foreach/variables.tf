variable "ami" {

    type = string
    default = "ami-0b4f379183e5706b9"
  
}

variable "instance_names" {
  type	= map
  default = {
        mongodb = "t2.micro"
        mysql = "t2.micro"
        redis = "t2.micro"
        rabbitmq = "t2.micro"
        cart = "t2.micro"
        catalogue = "t2.micro"
        shipping = "t2.micro"
        payment = "t2.micro"
        dispatch = "t2.micro"
        user = "t2.micro"
        web = "t2.micro"

  }
}

variable "zone_id" {

    type = string
    default = "Z04890181CXTIAWV1SUNA"
  
}

variable "domain_name" {

    type = string
    default = "mohammedasik.shop"
  
}