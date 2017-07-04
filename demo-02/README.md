# Level 2

- terraform.tfvars: variable file
- main.tf: adding variables
- nginx.tf: use variables, add count
- format() function
- element() function
- in var condition
- fmt
- output
- template

# Steps

- terraform init
- terraform plan
- terraform fmt
- terraform plan -var machine_count=3 -out my.plan
- terraform apply my.plan
- kubectl get pods
- change number of pod: terraform plan
- kubectl get pods
- minikube service rmll-demo-nginx-service --url
- terraform show
- terraform destroy

# Make file

make fmt
make plan
make
make graph
