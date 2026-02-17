data "aws_ami" "ubuntu_ami" {
    most_recent = true
    filter  {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}


resource "aws_instance" "my_ubuntu_ec2" {
    ami = data.aws_ami.ubuntu_ami.id
    instance_type = "t3a.micro"
    key_name = "Ribesh_KeyPair_Main.pem"
    subnet_id = data.aws_subnet.default.id
    vpc_security_group_ids = [aws_security_group.dast_sg.id]

    tags = {
        Name = "DAST Application"
    }
}