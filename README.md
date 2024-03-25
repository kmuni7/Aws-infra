# Aws-infra



## Terraform plan can be saved

* Once you have **terraform plan** the generated plan file can be saved, for further usage/reference
    Use command **terraform plan -out=demopath**

* Now, the file is saved to the demopath file,
    Note: The generated file will be in Binary can't be readable. But still you can use this to apply 

   `command`: **Terraform apply demopath** will give generate the resource with saved plan file
   