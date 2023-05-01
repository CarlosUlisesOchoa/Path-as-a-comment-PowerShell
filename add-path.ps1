<# 
# Developed by Carlos Ochoa
# https://carlos8a.com
# https://github.com/carlosulisesochoa
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]$d
)

function Get-CommentSyntax {
    param($fileExtension)

    switch ($fileExtension) {
        ".js" { return "//" }
        ".jsx" { return "//" }
        ".ts" { return "//" }
        ".tsx" { return "//" }
        ".sass" { return "//" }
        ".less" { return "//" }
        ".scss" { return "//" }
        ".php" { return "//" }
        ".java" { return "//" }
        ".py" { return "#" }
        ".rb" { return "#" }
        ".css" { return "/*" }
        default { return $null }
    }
}

function Get-ExpectedPath {
    param($Path, $BasePath)

    $relativePath = $Path.Substring($BasePath.Length)
    return $relativePath
}

$sourceDir = $d
$parentSourceDir = (Split-Path -Parent $sourceDir) + '\'

Write-Host "Starting the process of checking files in subdirectories: $sourceDir"

Get-ChildItem -Path $sourceDir -Recurse -File | ForEach-Object {
    $filePath = $_.FullName
    $fileExtension = $_.Extension
    $commentSyntax = Get-CommentSyntax $fileExtension

    if ($commentSyntax -ne $null) {
        $firstLine = Get-Content -Path $filePath -TotalCount 1
        $expectedPath = Get-ExpectedPath -Path $filePath -BasePath $parentSourceDir

        if ($fileExtension -eq ".css") {
            $expectedPath = " " + $expectedPath.TrimStart('\') + " */"
        }

        if ($firstLine -ne $expectedPath) {
            $content = Get-Content -Path $filePath -Raw
            $newContent = $commentSyntax + " " + $expectedPath.TrimStart('\') + "`n" + $content.Replace("`r`n", "`n")
            Set-Content -Path $filePath -Value $newContent
            Write-Host "Added path comment to file: $filePath"
        }
    }
}

Write-Host "All files have been checked in subdirectories: $sourceDir"
