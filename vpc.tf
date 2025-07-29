provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}
resource "aws-instance" "ec2" {
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    security_gropup = ["my-new-sg"]
    key_Name = "piu"
    root_block_device {
        volume_size = 20
        volume_type = "gp3"
        delete_on_termination = true
    }
    tags = {
        Name = "my first instance"
    }
}
