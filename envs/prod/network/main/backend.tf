terraform {
  backend "s3" {
    bucket = "gem-entertainment-dev-tfstate"
    region = "ap-northeast-1"
  }
}
