/*
  -----------------------------------------------------------------------------
                                  EC2 Instance
  # Create a new instance of the latest Amazon Linux 2
  # t3.small node with an AWS Tag naming it "tf-demo-test"
  -----------------------------------------------------------------------------
*/
resource "aws_instance" "test_instance1" {
  ami                    = "ami-0233c2d874b811deb"
  key_name               = "cp4na" # Comment this line for demo drama
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-08d96cb5ca46c1e73", "sg-02385ce295a3a1ceb"]
  #ipv6_address_count     = 1

  subnet_id                   = "subnet-05ce2bbb8a703e747"
  associate_public_ip_address = true
  hibernation                 = false

  tags = {
    Name = "tf-demo-test-1"
  }
}
