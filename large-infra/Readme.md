Imagine you have 21 things to add (or many resources to add into the infrastructure)

and you already created in a single terraform file.

now you want to add a resource into it(say you want to add another ingress rule to the SG)
    when you add the code and do **terraform plan** it will take so much time to refresh the remaining resources as well. 

    here it comes terraform apply -target=SG(SG = resource here as example, and can be any)
    or
    terraform plan -refresh=false