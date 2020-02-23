param (
    [Parameter(Mandatory=$true)]
    [string]$ScopeId
  )

$Scope = Get-DhcpServerv4ScopeStatistics -ScopeId $ScopeId

Write-Output $Scope.Pending
