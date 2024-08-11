module "sandbox" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "aws.aft-testing"
    AccountName               = "Sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "aws.aft-testing"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }
  account_tags = {
    "Learn Tutorial" = "AFT"
  }
  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }
  custom_fields = {
    group = "sg_aws_devops"
  }
  account_customizations_name = "sandbox-aft"
}