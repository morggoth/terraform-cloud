terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/oci"
      version = "4.36.0"
    }
  }
}

provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "OPDH:EU-FRANKFURT-1-AD-3"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaanz4y2s6ptlbmaeuccso7pstria3e226ddy2hjuiexpwsxfhprvqa"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaa7mozayos2nk73zetasutswm4x7uvnjimejbbdtes6vz6f5zngltq"
	}
	display_name = "instance-20210722-2034"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1b+cO1D7da3qQaaY60TKH9xT9kPqtJwiXguuNHBpv73gpMvnT85o6TBFsyotfniF53+1IHgl7wl8kXgnxO+PI6518LgBVa222XGAAdzIpNsc5jEcK6vFvTAQF+dBjCXegvDUpu6JicWUTQERyKZsHFLynLwytqPAGZShSiVZC6sFRRL9KrK1g4HYSPhRYBuWWgOxDOOzIBBqvil3tCcyfBZdaQJhbJ7mOgvtZat4XipX6S7Xkfqq+6m9gh4vzBabCBzZqTKeTY4YKwvC3Ku5xsz6nuHm81GutOUbMVEABtV6HQGlR9BDOFN9RErFBisjmfMzSC+Gni76Rurwy9/JNzY7KGjB9ba8pDNvdznDwZxQkrYpQCuGlutDdVWU9xxMu3pxQPdZoKnrw+UYAe/iHDKGvkvpBaXq8Nr+LpfmZ/3sCnCJMjbSmiRc9rJJ0OtL5bD+OnACAngatP+xYHGbrob0TBlwDA/052QIt2iWKX1ZGu0/abf0eerT9YLagqTc= morggoth@hyperion.local"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaariur6rmuruizy5aqbr56lzyvytydzuzweezix6ztaoumpny3zga"
		source_type = "image"
	}
}
