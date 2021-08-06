output "out1" {
  value = "Namasthe Bhai!"
}

variable "Trainings" {
  default = ["DevOps","AWS"]
}
output "First-training" {
  value = var.Trainings[0]
}