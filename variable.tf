variable "secret_description" {
    description              = "description about the secret"
    default                  = "test for the ssm"          
}
variable "kms_key_id" {
    description              = "kms key that need to be attached"
    default                  = "63a4cebc-3297-41d5-b797-5bbe5e765728"          
}
variable "name" {
    description              = "name of the secret"
    default                  = "ssm_test"          
}
variable "username" {
    description              = "user name for test"
    default                  = "admin"          
}
variable "password" {
    description              = "test password"
    default                  = "admin"          
}

