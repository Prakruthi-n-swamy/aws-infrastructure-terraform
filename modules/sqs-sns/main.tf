resource "aws_sqs_queue" "app_queue" {

  name = var.queue_name

}

resource "aws_sns_topic" "alerts" {

  name = var.topic_name

}

resource "aws_sns_topic_subscription" "queue_subscription" {

  topic_arn = aws_sns_topic.alerts.arn

  protocol  = "sqs"

  endpoint  = aws_sqs_queue.app_queue.arn

}
