param(
    [Parameter(Mandatory = $true)][string]$Version,
    [Parameter(Mandatory = $true)][string]$Destination
)

$ErrorActionPreference = 'Stop'
$distributionRoot = Split-Path -Parent $Destination
New-Item -ItemType Directory -Force -Path $distributionRoot | Out-Null
$archive = Join-Path $env:TEMP "apache-maven-$Version-bin.zip"
$uri = "https://archive.apache.org/dist/maven/maven-3/$Version/binaries/apache-maven-$Version-bin.zip"
Invoke-WebRequest -Uri $uri -OutFile $archive
Expand-Archive -Path $archive -DestinationPath $distributionRoot -Force
Remove-Item -LiteralPath $archive -Force
