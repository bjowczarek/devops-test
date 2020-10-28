resource "aws_instance" "sudeer-ec2" {
  ami           = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
  key_name = "KeyPairTerra"
  tags={
      Name="sudeer-ec2-1"
  }
}
