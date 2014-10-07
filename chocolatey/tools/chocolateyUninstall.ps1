$programFiles = $env:ProgramFiles
$installFolder = "$programFiles\java"
Write-Host "Removing folder $installFolder"
Remove-Item $installFolder -force -recurse

Write-Host "Removing environment variable JAVA_HOME"
[Environment]::SetEnvironmentVariable("JAVA_HOME",$null,"Machine")