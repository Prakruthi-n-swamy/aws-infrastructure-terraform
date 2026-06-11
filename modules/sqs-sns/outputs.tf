output "queue_arn" {

  value = aws_sqs_queue.app_queue.arn

}

output "topic_arn" {

  value = aws_sns_topic.alerts.arn

}
