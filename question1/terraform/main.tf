resource "aws_instance" "ec2_vm_cc" {
  ami           = "ami-003fb5b0ea327060c"
  instance_type = "t3.micro"
  key_name      = "ayoub-berhili-key"
  tags = {
    Name = "terraform-vm-cc"
    Owner = "aybrl-ec2"
    Etudiant = "mohammed-ayoub.berhili@etu.u-pec.fr"
  }

  vpc_security_group_ids = ["${aws_security_group.default.id}"]
}

# Default ec2 user is "ec2-user"