<#
    Change adapterName to your adapter name in order to use default values on your pc or you can pass it as parameter "-adapterName nameOfYourAdapter" when you are calling script
    Change $ti value do change default value of sleep interval
#>
param (
[string]$adapterName = "mreza",
[int]$ti = 5
)
#notifying user int console
Write-Host "Disabling network adapter" $adapterName
#disabling adapter
netsh interface set interface $adapterName admin=disable
Write-Host "Waiting " $ti " seconds"
#waiting
Start-Sleep -s $ti
Write-Host "Enabling adapter" $adapterName
#enabling adapter
netsh interface set interface $adapterName admin=enable
Write-Host "Done"
#end
