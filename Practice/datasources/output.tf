output "ami" {
    value = data.aws_ami.OS.id  
}

output "device" {
 value = data.aws_ami.OS.root_device_type 
}

output "vmtype" {
    value = data.aws_ami.OS.virtualization_type

}