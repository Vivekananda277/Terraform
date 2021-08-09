resource "aws_spot_instance_request" "cheap_worker" {
  count                     = length(var.COMPONENTS)
  ami                       = "ami-074df373d6bafa625"
  spot_price                = "0.0031"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = ["sg-0bcf708942b82467a"]
  wait_for_fulfillment      = true
  spot_type                 = "persistent"
  tags                      = {
    Name                    = element(var.COMPONENTS, count.index)
  }
}