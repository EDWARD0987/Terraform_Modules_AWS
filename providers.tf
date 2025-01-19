provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Name = "Apache"
      ProjectName = "Webserver_Project"
      Environment = "Dev"
      ManagedBy   = "Edward Doku"
      Email       = "edwarddoku123@gmail.com"
    }
  }
}
