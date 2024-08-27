#create a s3 bucket
resource "aws_s3_bucket" "name" {
    bucket = "rajubucket6789045"
    }
  

#upload file into s3 bucket
resource "aws_s3_object" "file" {
bucket = aws_s3_bucket.name.id
key = "hello.txt"
source = "C:/Users/ammun/raj home/terra1/hello.txt"
  
}