let AdvancedTypeSelector =
    -- Some small desc
      let AdvancedSelector =
          {-
              SOME PARAM EXPLANATION DOCS
          -}

          let ByPlatformType = { platformType : Text }

          let ByPlatformInstance =
                ByPlatformType ⩓ { location : Text, platformInstance : Text }

          let ByTenant = ByPlatformInstance ⩓ { localProjectId : Text }

          in  < PlatformType : ByPlatformType
              | PlatformInstance : ByPlatformInstance
              | Tenant : ByTenant
              >

      let example1 =
          -- this AdvancedSelector targets all platforms of type "Azure"
            AdvancedSelector.PlatformType { platformType = "Azure" }

      let example2 =
          -- this AdvancedSelector targets a specific AWS Platform
            AdvancedSelector.PlatformInstance
              { platformType = "AWS"
              , location = "eu-central-1"
              , platformInstance = "test"
              }

      let example3 =
          -- this AdvancedSelector targets a specific GCP Platform Tenant
            AdvancedSelector.Tenant
              { platformType = "GCP"
              , location = "eu-central"
              , platformInstance = "test"
              , localProjectId = "test"
              }

      in AdvancedSelector

in AdvancedTypeSelector