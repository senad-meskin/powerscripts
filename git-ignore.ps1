<#
 .Synopsis
  Downloads .gitignore template from GitHub

 .Description
  Download .gitignore template from GitHub but expects parameter for a template name .e.g `Get-GitIgnore VisualStudio`, so if we have
  a template VisualStudio.gitignore we should just provide VisualStudio and Get-GitIgnore function will create a .gitignore
  file in active folder.
  Created by Senad Meškin
  Git: https://github.com/senad-meskin
  Project: https://github.com/senad-meskin/powerscripts

 .Parameter templateName
  Parameter templateName is mandatory and it represents template name on the Github gitignore repository.

 .Example
  # Download VisualStudio.gitignore template
  Get-GitIgnore VisualStudio
#>
param([ValidateNotNullOrEmpty()][string]$templateName = $(throw "Template name is mandatory!"))
## Create url from where file will be downloaded
$workingDir = (Get-Item .).FullName
$url = "https://raw.githubusercontent.com/github/gitignore/main/$($templateName).gitignore"
## display info in terminal
Write-Host "Downloading .gitignore template from $($url)"

try {
    ## invoke webrequest, expand content and then write that content to .gitignore file
    ## Invoke-WebRequest $url -ErrorAction SilentlyContinue | Select-Object -Expand Content | Set-Content .\.gitignore -Force
    $wc = New-Object System.Net.WebClient
    
    $wc.DownloadFile($url, "$($workingDir)\.gitignore");
}
catch {
    ## display error if any
    Write-Host "There was an error while downloading $($templateName) .gitignore template from a GitHub repository, please check the template name. (It's case sensitive)" -ForegroundColor Red
    Write-Host $_;
}
## notice user that script reached it's end
Write-Host "Done"
