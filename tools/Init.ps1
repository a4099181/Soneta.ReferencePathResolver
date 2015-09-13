param($installPath, $toolsPath, $package, $project)

$localAppData = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::LocalApplicationData);
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
$xslt.Load($toolsPath+"\modules-to-props.xsl");
$xslt.Transform($localAppData+"\Soneta\Modules.xml", $toolsPath+"\..\build\Soneta_enova-ReferencePaths.props");
