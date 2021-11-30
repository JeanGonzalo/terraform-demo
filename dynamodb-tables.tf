module "dynamodb-table_example_basic" {
  source = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.1.0"
  name = "${var.dynamo_table}-${terraform.workspace}"
  billing_mode = "PAY_PER_REQUEST"
  read_capacity = 0
  write_capacity = 0
  hash_key = "ia-${var.dynamo_table}"
  attributes = [
      {
          name = "id-${var.dynamo_table}"
          type = "S"
      }
  ]
}