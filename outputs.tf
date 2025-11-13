/*output "public_instance_ocid" {
  description = "The OCID of the created public instance"
  value       = oci_core_instance.my_instance_public.id
}

output "public_instance_public_ip" {
  description = "The public IP of the created public instance"
  value       = oci_core_instance.my_instance_public.public_ip
}
*/

output "private_instance_ocid" {
  description = "The OCID of the created private instance"
  value       = oci_core_instance.my_instance_private.id
}

output "private_instance_public_ip" {
  description = "The public IP of the created private instance"
  value       = oci_core_instance.my_instance_private.public_ip
}
