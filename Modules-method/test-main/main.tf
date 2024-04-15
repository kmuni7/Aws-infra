module "aws_test_from_module" {
    #source = "git::https://github.com/kmuni7/module-test.git" #github repo link
    #source = "github.com/kmuni7/module-test" #direct withthe git - this is generally the https web link https://github.com/kmuni7/module-test/tree/main (removed- https, and tree,main) not the repo link
    source = "git::https://github.com/kmuni7/module-test.git?ref=dev" //refering specific to the branch in a repo, where `dev` is the branch name
}