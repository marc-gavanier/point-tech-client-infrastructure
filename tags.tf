data "aws_caller_identity" "current_iam" {}

locals {
  tags = {
    context-project                   = local.product_information.context.product
    context-service                   = local.product_information.context.service
    context-start_date                = local.product_information.context.start_date
    context-end_date                  = local.product_information.context.end_date
    purpose-environment               = terraform.workspace
    purpose-disaster_recovery         = local.product_information.purpose.disaster_recovery
    purpose-service_class             = local.product_information.purpose.service_class
    organization-client               = local.product_information.organization.client
    stakeholders-creator              = local.product_information.stakeholders.creator
    stakeholders-team                 = local.product_information.stakeholders.team
    stakeholders-deployer_iam_account = data.aws_caller_identity.current_iam.account_id
  }
}
