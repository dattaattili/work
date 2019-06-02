data "aws_kms_alias" "kms_id" {
  name                  = "alias/${var.kms_key_name}"
}
resource "aws_secretsmanager_secret" "secret" {
  description           = "${var.secret_description}"
  kms_key_id            = "${data.aws_kms_alias.kms_id.arn}"
  name                  = "${var.name}"
}
resource "aws_secretsmanager_secret_version" "secret" {
  lifecycle {
    ignore_changes = [
      "secret_string"
    ]
  }
  secret_id             = "${aws_secretsmanager_secret.secret.id}"
  secret_string         = <<EOF
{
  "username": "${var.username}",
  "password": "${var.password}",
}
EOF
}
