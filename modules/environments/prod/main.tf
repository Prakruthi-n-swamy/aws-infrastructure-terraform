module "messaging" {

  source = "../../modules/sqs-sns"

  queue_name = "prod-order-queue"

  topic_name = "prod-alert-topic"
}

module "server" {

  source = "../../modules/ec2-linux"

  ami_id = "ami-123456"

  instance_type = "t3.small"
}
