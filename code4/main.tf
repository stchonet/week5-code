resource "aws_lightsail_instance" "custom" {
  name              = "stevethe73"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"

  user_data     = file("eg.sh")
  key_pair_name = "name"
  tags = {
    team      = "workout"
    env       = "work"
    create_by = "terraform"
  }

}
resource "aws_iam_group" "cloudteam" {
  name = "cloudteam"
}

resource "aws_iam_user" "lb" {
  name = "u5bt2024"
}
