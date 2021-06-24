// Using depends_on attribute for explicit dependency

resource "local_file" "dependency" {
  filename = "./Outputs/file1.txt"
  content = "This file depends on the file2.txt"
  depends_on = [
    time_sleep.sleepT
  ]
}

resource "local_file" "dependency2" {
  filename = "./Outputs/file2.txt"
  content = "This is the first file created at ${time_static.timeNow.id}"
}

resource "time_sleep" "sleepT" {
  create_duration = "15s"
}