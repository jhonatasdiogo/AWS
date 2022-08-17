resource "aws_instance" "Jhonatas_teste" {
  count = 2
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  key_name = "terraform-teste" 
  
  tags = {
    Name = "Jhonatas_teste"
    env = "tst"
  }

  vpc_security_group_ids = [ aws_security_group.SG_TF.id ]  

}