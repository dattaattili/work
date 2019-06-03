# Terraform module for sercrets manager.

This module is used to create a secret inside secrets manager

## example

Pass in the following parametes into the source file so that we can create a secret inside secrets manager

```module "test_secrets" {
   source                      = "./modules/secrets"
   secret_description          = "test for the ssm"
   kms_key_name                = "test"
   name                        = "ss"
   key_values                  = {
    key1                       = "value1"
    key2                       = "value2"
    key3                       = "value3"
  }
}```

key_values variable is used to create n number of key value pair so this module will help to create secrets for different use case. 