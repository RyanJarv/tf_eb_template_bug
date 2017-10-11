#!/usr/bin/env bash
set -euo pipefail

terraform apply

eb config get terraform
echo "# Settings in terraform.cfg.yml: $(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/terraform.cfg.yml|grep TEST|wc -l)"
echo "Parameter names:" 
echo "$(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/terraform.cfg.yml|egrep "TEST_[0-9]+"|sort)"

echo "\n\n-------\n\n"

mv main.tf main.tf.bak
mv main.tf.update main.tf

echo "Running terraform with 3 beanstalk template parameters changed"
terraform apply
eb config get terraform
echo "# Settings in terraform.cfg.yml: $(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/terraform.cfg.yml|grep TEST|wc -l)"
echo "Parameter names:"
echo "$(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/terraform.cfg.yml|egrep "TEST_[0-9]+"|sort)"

mv main.tf main.tf.update
mv main.tf.bak main.tf
