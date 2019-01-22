 output "address" {
     value = "${google_compute_instance.gitlab-ce.network_interface.0.access_config.0.assigned_nat_ip}"
 }

 output "initial_root_password" {
     value = "${data.template_file.gitlab.vars.initial_root_password}"
 }

 output "runner_token" {
     value = "${data.template_file.gitlab.vars.runner_token}"
 }