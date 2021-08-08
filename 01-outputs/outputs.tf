output "out1" {
  value = "Namasthe Bhai!"
}

variable "Trainings" {
  default = ["DevOps","AWS"]
}
output "First-training" {
  value = var.Trainings[0]
}

variable "Maps" {
  default = {
    AWS ="6 AM IST"
    DevOps ="9 AM IST"
  }
}

output "Timings" {
  value = "AWS STARTS AT ${var.Maps["DevOps"]}"
}

variable "Hertz" {
  default = {
    Team = 9
    Members = ["Vivek","Jaleel"]
  }
}

output "Team-members" {
  value = "First candidate is ${var.Hertz[1]}"
}