$Scopes = Get-DhcpServerv6Scope
$y = $Scopes.Count - 1

$json = "{`"data`":["

for ($x=0;$x -lt $Scopes.Count;$x++) {
    Write-Output $x
    $json += "{`"ScopeId`":`"" + $Scopes[$x].ScopeId.IPAddressToString + "`",`"SubnetMask`":`"" + $Scopes[$x].SubnetMask.IPAddressToString + "`""

    if ($x -lt $y) {
        $json += "},"
    } else {
        $json += "}"
    }
}

$json += "]}"

Write-Output $json