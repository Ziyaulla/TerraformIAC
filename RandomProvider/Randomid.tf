
resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }

  byte_length = 11
}

// Generating random string.

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

// Generating a random password

resource "random_password" "pwd" {
  length = 8
  special = true
  override_special = "/@$"
}

output "pwd" {
    value = random_password.pwd.result
}