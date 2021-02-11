

## Steps

+ [ ] Create a .tfvars file  
    - Sample below  
        ```bash
            region = "us-east-2"  
            access-profile = "default"  
        ```  
+ [ ] Execute and specify a var file  
    ` terraform plan -var-file eks.tfvars `  