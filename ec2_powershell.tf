
data "template_file" "windows_script" {
  template = "${file("C:/Users/A637979/Desktop/Terraform/ec2/i.txt")}"
  }

provider "aws" {
  profile = "default"
  
  region  = "ap-southeast-1"
  access_key = "AKIASZHPSUOS2YI666LN"
  secret_key = "4PuuRXfv5X9IQcXYLi/OU9VATj2XaB5mm5r45L2l"


}

resource "aws_instance" "example2" {

  ami = "ami-0fdb514b22fa2aed1"
  key_name = "terraform"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1b"
  user_data = "${file("C:/Users/A637979/Desktop/Terraform/ec2/i.txt")}"
                 or "${data.template_file.windows_script.template}"
  tags = {
   Name = "Windows1"
 }
 

 
}
