#powershell -ExecutionPolicy Bypass -File "C:\Path\script.ps1"
$Script = @'
try {
    
    $userPath = [Environment]::GetFolderPath('UserProfile') + "\logs"
    New-Item -ItemType directory -Path $userPath
    # Ensure the folder exists (it should by default)
    if (-not (Test-Path $userPath)) {
        throw "Location folder not found at: $userPath"
    }

    # Create a new text file named MyFile.txt
    $filePath = Join-Path $userPath "dl.log"
    New-Item -Path $filePath -ItemType File -Force | Out-Null
    Write-Host "File created successfully at: $filePath"
    
    Write-Host "Installing NuGet" -ForegroundColor Blue
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.021 -Force
    Write-Host "Installing PsWindowsUpdate" -ForegroundColor Blue
    Install-Module -Name PSWindowsUpdate -Force
    Write-Host "Importing Module" -ForegroundColor Blue
    Import-Module -Name PSWindowsUpdate -Force    
    
    Write-Host "Add windows service" -ForegroundColor Blue
    Add-WUServiceManager -ServiceID "7971f918-a847-4430-9279-4a52d1efe18d" -Confirm:$false
    
    Write-Host "Get windows update" -ForegroundColor Blue
    Get-WindowsUpdate

    Write-Host "Install windows update" -ForegroundColor Blue
    Install-WindowsUpdate -Install -AcceptAll 
    
    Write-Host "Install all driver updates" -ForegroundColor Blue
    Install-WindowsUpdate -Install -AcceptAll -UpdateType Driver -MicrosoftUpdate -ForceDownload -ForceInstall -IgnoreReboot -ErrorAction SilentlyContinue | Out-File $filePath -Force
    Install-WindowsUpdate -Install -AcceptAll -UpdateType Driver -MicrosoftUpdate -ForceDownload -ForceInstall -IgnoreReboot -ErrorAction SilentlyContinue | Out-File $filePath -Force
    Write-Host "Done" -ForegroundColor Blue
}
catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
'@

$EncodedScript = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($Script))
$EncodedScript
