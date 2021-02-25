

## Steps

+ [ ] Create a .tfvars file  
    - Sample below  
        ```bash
            region = "us-east-2"  
            access-profile = "default"  
        ```  
+ [ ] Execute and specify a var file  
    ` terraform plan -var-file eks.tfvars `  

## Notes

+ A successful execution of the files will take about 20 minutes now