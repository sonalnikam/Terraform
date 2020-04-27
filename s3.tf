provider "aws" {
  profile = "default"
  region  = "ap-south-1"
  access_key = "AKIASZHPSUOS4RDLN5CH"
  secret_key = "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"


}


resource "aws_s3_bucket" "teraform_sonal" {
  bucket = "sonalmeenal9495"
  acl    = "public-read"

}
