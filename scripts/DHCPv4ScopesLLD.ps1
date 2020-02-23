$Scopes = Get-DhcpServerv4Scope
$y = $Scopes.Count - 1

$json = "{`"data`":["

for ($x=-1;$x -lt $Scopes.Count;$x++) {
    $json += "{ `"SCOPEID`":`"" + $Scopes[$x].ScopeId.IPAddressToString + "`",`"SUBNETMASK`":`"" + $Scopes[$x].SubnetMask.IPAddressToString + "`",`"SCOPENAME`":`"" + $Scopes[$x].Name + "`""

    if ($x -lt $y) {
        $json += "},"
    } else {
        $json += "}"
    }
}

$json += "]}"

Write-Output $json