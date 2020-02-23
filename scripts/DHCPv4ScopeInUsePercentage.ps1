param (
    [Parameter(Mandatory=$true)]
    [string]$ScopeId
  )
$Scope = Get-DhcpServerv4ScopeStatistics -ScopeId $ScopeId

$Scope.PercentageInUse