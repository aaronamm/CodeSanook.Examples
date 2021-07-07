
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_preference_variables?view=powershell-6#debugpreference
$DebugPreference = "Continue"

Describe "Read JSON" {
    It "should read JSON and random pick name correctly" {
        $filePath = Join-Path -Path $PSScriptRoot -ChildPath "names-0.json"
        $names = [System.Collections.ArrayList](Get-Content $filePath | ConvertFrom-Json)
        $randomNames = Get-Random -InputObject $names -Count 5
        Write-Debug ($randomNames -join ", ")
    }
}