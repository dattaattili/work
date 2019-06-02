resource "aws_kms_key" "kms_key" {
  description             = "${var.description}"
  policy                  = "${var.policy}"
  is_enabled              = "${var.is_enabled}"
  deletion_window_in_days = "${var.deletion_window_in_days}"
  enable_key_rotation     = "${var.enable_key_rotation}"
  tags                    = "${merge(var.default_tags, map("name", format("%s", var.kms_name)))}"
}

resource "aws_kms_alias" "kms_key_alias" {
  name          = "alias/${var.kms_name}"
  target_key_id = "${aws_kms_key.kms_key.key_id}"
}
