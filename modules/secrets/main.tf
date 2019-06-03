# data is used to get the kms key id using the alias name of the kms key
data "aws_kms_alias" "kms_id" {
  name                  = "alias/${var.kms_key_name}"
}
# aws_secretsmanager_secret resource is used to to manage AWS Secrets Manager secret metadata
resource "aws_secretsmanager_secret" "secret" {
  description           = "${var.secret_description}"
  kms_key_id            = "${data.aws_kms_alias.kms_id.arn}"
  name                  = "${var.name}"
}
# aws_secretsmanager_secret_version resource is used to manage AWS Secrets Manager secret version including its secret value
resource "aws_secretsmanager_secret_version" "secret" {
  secret_id             = "${aws_secretsmanager_secret.secret.id}"
  secret_string         = "${jsonencode(var.key_values)}"
}
