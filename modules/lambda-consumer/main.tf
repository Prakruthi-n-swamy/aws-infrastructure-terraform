resource "aws_iam_role" "lambda_role" {

  name = "lambda-execution-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [{
      Effect = "Allow"

      Principal = {
        Service = "lambda.amazonaws.com"
      }

      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_lambda_function" "consumer" {

  function_name = var.function_name

  filename      = "lambda.zip"

  handler       = "lambda_function.lambda_handler"

  runtime       = "python3.11"

  role          = aws_iam_role.lambda_role.arn

}
