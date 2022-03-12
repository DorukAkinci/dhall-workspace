let CloudProvider = < AWS | Azure >

let TerraformProviderConfig
    : Type
    = { source : Text, version : Text }

let TerraformProvider =  < AWS: { aws : TerraformProviderConfig } | Azure: { azurerm : TerraformProviderConfig , extra: TerraformProviderConfig }  >


let generateBackendHandler = λ(cp: CloudProvider) →
    let handler =
    {
       , AWS = TerraformProvider.AWS { aws = { source = "hashicorp/aws", version = "~> 1.0" } }
       , Azure = TerraformProvider.Azure { azurerm = { source = "hashicorp/azurerm", version = "~> 1.0" } , extra = { source = "extra", version = "1.0" } }
    }
    in merge handler cp

in generateBackendHandler CloudProvider.Azure