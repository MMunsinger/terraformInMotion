# Infracost Cost Report
This report shows the cost estimates for your Terraform resources.

## Summary

The following costs are estimated for the Terraform resources defined in this repository:

## Costs Breakdown

Key: * usage cost, ~ changed, + added, - removed

──────────────────────────────────
Project: MMunsinger/terraformInMotion/plan.json

+ azurerm_linux_virtual_machine.example
  +$55

    + Instance usage (Linux, pay as you go, Standard_DS1_v2)
      +$53

    + os_disk
    
        + Storage (S4, LRS)
          +$2
    
        + Disk operations
          Monthly cost depends on usage
            +$0.0005 per 10k operations

Monthly cost change for MMunsinger/terraformInMotion/plan.json
Amount:  +$55 ($0.00 → $55)

──────────────────────────────────
Project: MMunsinger/terraformInMotion/tfplan

- azurerm_linux_virtual_machine.example
  -$55

    - Instance usage (Linux, pay as you go, Standard_DS1_v2)
      -$53

    - os_disk
    
        - Storage (S4, LRS)
          -$2
    
        - Disk operations
          Monthly cost depends on usage
            -$0.0005 per 10k operations

Monthly cost change for MMunsinger/terraformInMotion/tfplan
Amount:  -$55 ($55 → $0.00)

──────────────────────────────────
Key: * usage cost, ~ changed, + added, - removed

*Usage costs can be estimated by updating Infracost Cloud settings, see docs for other options.

5 cloud resources were detected:
∙ 1 was estimated
∙ 4 were free