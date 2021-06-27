module "sample_module" {
  source = "./local_module"
  fname = "module3.txt"
}


output "filePerm" {
  value = module.sample_module.name
}