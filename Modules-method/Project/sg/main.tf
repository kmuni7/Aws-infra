module "elb-sg" {
    source = "../../Module/SG"
    # elb-port = 22 #user is trying to open the port that you don't want
}