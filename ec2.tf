provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
  access_key = "AKIASZHPSUOS4RDLN5CH"
  secret_key = "pzYe3I58bcSQxFCcn63pGMFIIl6gMDf6F87nXlqX"


}

resource "aws_instance" "example" {

  ami = "ami-0ec225b5e01ccb706"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1a"
  user_data = "${file("C:/Users/A637979/Desktop/Terraform/apache.sh")}"
  tags = {
   Name = "linux"
 }
}

provider "aws" {
  profile = "default"
  alias = "southeast1b"
  region  = "ap-southeast-1"
  access_key = "AKIASZHPSUOS4RDLN5CH"
  secret_key = "pzYe3I58bcSQxFCcn63pGMFIIl6gMDf6F87nXlqX"


}

resource "aws_instance" "example2" {

  ami = "ami-0fdb514b22fa2aed1"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1b"
  tags = {
   Name = "Windows"
 }
}
