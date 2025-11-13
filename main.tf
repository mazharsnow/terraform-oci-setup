provider "oci" {
  # Using default OCI config file
  # If you want to specify the config file or profile, uncomment the lines below:
  # config_file = "C:/Users/opc/.oci/config"  # Specify the path to the config file
  # profile     = "DEFAULT"                 # Specify the profile name if needed
}

/*
resource "oci_core_instance" "my_instance" {
  display_name   = "NewTerraformInstance"
  compartment_id = var.compartment_ocid

  # Specify the availability domain (use the value retrieved earlier)
  availability_domain = var.availability_domain

  # Instance shape configuration
  shape = var.instance_shape  # Example: VM.Standard.E4.Flex

source_details {
  source_type = "image"
  source_id   = var.image_ocid
}

  # VNIC Configuration
  create_vnic_details {
    subnet_id      = var.subnet_ocid
    assign_public_ip = true  # Optional: set to false if you don't need a public IP
  }

  # Metadata (SSH Key)
  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)  # Path to your SSH public key
  }

  # Shape configuration (memory, OCPUs)
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
}
*/

# Second VM (private subnet instance)
resource "oci_core_instance" "my_instance_private" {
  display_name   = "NewTerraformInstance_Private"
  compartment_id = var.compartment_ocid

  # Specify the availability domain
  availability_domain = var.availability_domain

  # Instance shape configuration
  shape = var.instance_shape  # Example: VM.Standard.E4.Flex

  source_details {
    source_type = "image"
    source_id   = var.image_ocid
    }

  # VNIC Configuration for Private Subnet (No Public IP)
  create_vnic_details {
    subnet_id      = var.private_subnet_ocid  # Specify the private subnet OCID here
    assign_public_ip = false  # Disable public IP
  }

  # Metadata (SSH Key)
  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)  # Path to your SSH public key
  }

  # Other optional configurations
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
}