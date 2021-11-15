Install-WindowsFeature -Name Web-Server -IncludeManagementTools
# Deploy Apps with Chocolately
Write-Host '*** NHG CUSTOMIZER *** INSTALL *** Install Chocolatey ***'
#Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host '*** NHG CUSTOMIZER *** INSTALL *** Install Chocolatey *** - Exit Code: ' $LASTEXITCODE
Write-Host '*** NHG CUSTOMIZER *** INSTALL APPS *** Install apps with Chocolatey. ***'
$Packages = 'microsoft-edge', `
            'sqlpackage', `
            'sql-server-management-studio'
            #'googlechrome', `
            #'keepass', `
            #'firefox', `
            #'winscp' `
            #'microsoft-edge', `
            #'advanced-ip-scanner'

ForEach ($PackageName in $Packages)
    {choco install $PackageName -y}
Write-Host '*** NHG CUSTOMIZER *** INSTALL APPS *** Install apps with Chocolatey. *** - Exit Code: ' $LASTEXITCODE

Write-Host '*** NHG CUSTOMIZER ********************* END *************************'   
#Reboot
#Restart-Computer