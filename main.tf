# just here for getting the module installed for export func
terraform {
    required_providers {
        dynatrace = {
            version = "1.7.2"
            source = "dynatrace-oss/dynatrace"
        }
    }
} 

module "autotags" {
    source = "./configuration/autotags"

    # https://www.terraform.io/docs/language/meta-arguments/module-providers.html#when-to-specify-providers
    # providers = {
    #     dynatrace = dynatrace.prod
    # }
}