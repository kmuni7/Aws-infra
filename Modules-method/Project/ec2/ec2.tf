module "ec2" {
    source = "../../Module/Ec2"
    instance_type = var.instance_type
}