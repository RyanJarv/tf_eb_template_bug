#!/usr/bin/env bash

echo "Settings in option-settings.json: $(grep TEST option-settings.json|wc -l)"
aws elasticbeanstalk create-application --application eb_bug_example_cli 
aws elasticbeanstalk create-configuration-template --application-name eb_bug_example_cli --template-name cli --solution-stack-name "64bit Amazon Linux 2017.03 v2.5.0 running PHP 7.1" --option-settings "$(cat option-settings.json)"

eb config get cli
echo "Settings in cli.cfg.yml: $(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/cli.cfg.yml|grep TEST|wc -l)"
echo "Parameter names:"
echo "$(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/cli.cfg.yml|egrep -o 'TEST_[0-9]+'|sort)"

echo "Settings in option-settings-update.json: $(grep TEST option-settings-update.json|wc -l)"
aws elasticbeanstalk update-configuration-template --application-name eb_bug_example_cli --template-name cli --option-settings "$(cat option-settings-update.json)"

eb config get cli
echo "Settings in cli.cfg.yml: $(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/cli.cfg.yml|grep TEST|wc -l)"
echo "Parameter names:"
echo "$(cat /Users/rgerstenkorn/Code/terraform_beanstalk_bug/.elasticbeanstalk/saved_configs/cli.cfg.yml|egrep -o 'TEST_[0-9]+'|sort)"
