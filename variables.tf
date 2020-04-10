////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  Repo:           allstate/nomad
//  File Name:      variables.tf
//  Author:         Patrick Gryzan
//  Company:        Hashicorp
//  Date:           April 2020
//  Description:    This is the input variables file for the terraform project
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  GCP Credentials
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
variable "gcp" {
    type        = map
    description = "Google Cloud Platform Variables"
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  SSH Credentials
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
variable "ssh" {
    type        = map
    description = "SSH Configuration Variables"
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Hashistack Configuration
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
variable "hashistack" {
    type            = map
    description     = "Hashistack Configuration Variables"
    default         = {
        image       = "gce-uefi-images/rhel-7"
        size        = 40
        servers     = 3
        clients     = 5
    }
}