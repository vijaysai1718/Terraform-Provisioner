resource "aws_instance" "expense" {

    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags


provisioner "local-exec" {
    
    command ="echo printing the Ip addess for the instance ${self.public_ip} >> public_ip.txt"

}
 connection {
     type = "ssh"
     host = self.public_ip
     user = "ec2-user"
     password ="DevOps321"
   }
  
  
  provisioner "remote-exec" {


  inline= [ "sudo dnf install nginx -y" , "sudo dnf install ansible -y" , "sudo systemctl start nginx"

  ]


  }
}