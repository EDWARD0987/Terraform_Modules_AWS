module "mymodule" {
    source = "./modules/vpc_module"   #"https://github.com/EDWARD0987/Terraform_Modules_AWS"
    ProjectName = "Webserver_project"
    env = "Dev"
    ManagedBy = "admin"
    instance_type = "t2.micro"
    ami_id = "ami-05576a079321f21f8"
}
