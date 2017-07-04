def: plan

fmt:
	terraform fmt

plan:
	terraform plan -out my.plan

apply:
	terraform apply my.plan

graph:
	terraform graph|dot -T png > out.png
	feh out.png

clean:
	terraform destroy
	rm tmpkey*
