/* The below resource creates a local.txt file with the content as per the argument
Resource type used here is local_file */

resource "local_file" "test"{
    filename = "./Outputs/local.txt"
    content = "Hey, Welcome to the resource type local_File!"
}


// Adding sensitive content so that it doesn't show output on the terminal and giving perimission to the file
// We cannot use content and sensitive content in the same resource
// directory_permission is the other argument left in the local_file provider

resource "local_file" "sensitive" {
    filename = "./Outputs/sensitive_co.txt"
    file_permission = "0755"
    sensitive_content = "Hey, Welcome to the sensitive content!"
}