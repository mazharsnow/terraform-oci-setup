variable "compartment_ocid" {
  description = "The OCID of the compartment where the instance will be created"
  default     = "ocid1.compartment.oc15..aaaaaaaa35ot5aa3oaqwzws3ehbypudafr6al2pvz63uh5hgwpjy26amgbea"
}

variable "subnet_ocid" {
  description = "The OCID of the subnet where the instance will be created"
  default     = "ocid1.subnet.oc15.ap-dcc-gazipur-1.aaaaaaaabnzh5l2zvvrt6vjcosrh5rp7utelplqot5bhrwuzsr3jysltsnua"
}

variable "private_subnet_ocid" {
  description = "The OCID of the private subnet where the instance will be created"
  type        = string
}

variable "image_ocid" {
  description = "The OCID of the image to be used for the instance"
  default     = "ocid1.image.oc15.ap-dcc-gazipur-1.aaaaaaaabx6w7rmzrdhzh7lgczqtk7nlgp2nnmycvw45dd65ngm3vct5ahqa"
}

variable "instance_shape" {
  description = "The shape of the instance (e.g., VM.Standard.E4.Flex)"
  default     = "VM.Standard.E4.Flex"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key file"
  default     = "C:/Users/opc/Downloads/ssh-key-2025-11-13.key.pub"  # Modify path if needed
}

variable "availability_domain" {
  description = "The availability domain where the instance will be deployed"
  type        = string  # Corrected type
}

variable "memory_in_gbs" {
  description = "Amount of memory (in GBs) for the instance"
  default     = 16
  type        = number
}

variable "ocpus" {
  description = "Number of OCPUs for the instance"
  default     = 2
  type        = number
}
