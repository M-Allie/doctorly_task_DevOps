1. How would you structure your Terraform project if you have multiple environments and use different cloud providers?


    My first action would be to search for whitepapers, blog post and guides from various hypervizor / cloud providers. With this I will have an understanding of the potential challenges and what resources I would need to overcome them. An example of the research metiarial I would make use of:
        https://www.linode.com/docs/guides/create-a-multicloud-infrastructure-using-terraform/
    
    I would also seek make my scripts moduler, reusable and apply DRY methodologies.
        https://medium.com/esker-labs/a-guide-to-terraform-refactoring-step-2-start-drying-779c6616538d
        https://terragrunt.gruntwork.io/docs/features/keep-your-terraform-code-dry/

    A cetralised secret storage and a method auditing code for secrets is highly inportant.

2. Write a Terraform script with the below requirements:

    ● Creates a ubuntu aws ec2-instance
    ● Install ansible
    ● Execute an ansible playbook (optional: Use Ansible script from Task #1 or any other )


    Setup:
        https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean

    teraform files:
        task2\terraform

    terraform plan \
      -var "do_token=${DO_PAT}" \
      -var "pvt_key=$HOME/.ssh/id_rsa" 

