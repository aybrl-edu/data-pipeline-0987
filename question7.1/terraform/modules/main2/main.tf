resource "aws_kinesis_stream" "ayoub-berhili-stock-input-stream" {
  name             = "terraform-kinesis-test"
  shard_count      = 1
  retention_period = 30

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  tags = {
    Environment = "test"
    Etudiant = "mohammed-ayoub.berhili@etu.u-pec.fr"
  }

  # Defines IAM roles for the ECS instance 
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"] 
}