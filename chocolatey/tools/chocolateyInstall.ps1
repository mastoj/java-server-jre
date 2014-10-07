$packageName = 'java-server-jre' 
$url = 'https://github.com/mastoj/java-server-jre/raw/master/releases/jdk1.7.0_67.zip'
$programData = $env:ProgramData
$installFolder = "$programData\java"

Install-ChocolateyZipPackage "$packageName" "$url" "$installFolder"
$java_home = "$installFolder\jdk1.7.0_67"
[Environment]::SetEnvironmentVariable("JAVA_HOME", $java_home, "Machine")
