module "mymodule" {
    source = "./modules/vpc_module"   #"https://github.com/EDWARD0987/Terraform_Modules_AWS"
    ProjectName = "my_project"
    env = "production"
    ManagedBy = "admin"
    instance_type = "t2.micro"
    ami_id = "ami-05576a079321f21f8"
}
