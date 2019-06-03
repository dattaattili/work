provider "aws" {
    region                     = "us-east-1" 
}
module "test_secrets" {
   source                      = "./modules/secrets"
   secret_description          = "test for the ssm"
   kms_key_name                = "test"
   name                        = "ss"
   key_values                  = {
    input1                   = "value1"
    input2                   = "value2"
    port                       = "value3"
  }
}
