provider "aws" {
    region                     = "us-east-1" 
}
module "test_secrets" {
   source                      = "./modules/secrets"
   secret_description          = "test for the ssm"
   kms_key_name                = "test"
   name                        = "ssm"
   username                    = "admin"
   password                    = "admin"
}
