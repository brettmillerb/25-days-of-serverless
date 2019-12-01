using namespace System.Net

# Input bindings are passed in via param block.
param(
    $Request,
    $TriggerMetadata
)
Wait-Debugger
$randomOutput = ' נ', ' ג', ' ה', ' ש' | Get-Random

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value (
    [HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body = $randomOutput
    }
)