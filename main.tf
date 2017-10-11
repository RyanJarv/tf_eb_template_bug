provider "aws" {
  region     = "us-east-1"
}

resource "aws_elastic_beanstalk_application" "tftest" {
  name        = "eb_bug_example"
  description = "eb_bug_example"
}

resource "aws_elastic_beanstalk_configuration_template" "test_20" {
  name                = "terraform"
  application         = "${aws_elastic_beanstalk_application.tftest.name}"
  solution_stack_name = "64bit Amazon Linux 2017.03 v2.5.0 running PHP 7.1"

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_01",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_02",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_03",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_04",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_05",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_06",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_07",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_08",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_09",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_10",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_11",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_12",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_13",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_14",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_15",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_16",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_17",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_18",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_19",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_20",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_21",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_22",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }

    setting {
      namespace = "aws:elasticbeanstalk:application:environment",
      name = "TEST_23",
      value = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    }
}
