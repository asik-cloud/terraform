variable "ami" {

    type = string
    default = "ami-0b4f379183e5706b9"
  
}

variable "instance_names" {
  type	= list
  default = ["web", "cart", "user", "mongodb", "payment", "dispatch", "rabbitmq", "shipping", "catalogue", "mysql", "redis"]
}

variable "zone_id" {

    type = string
    default = "Z04890181CXTIAWV1SUNA"
  
}

variable "domain_name" {

    type = string
    default = "mohammedasik.shop"
  
}