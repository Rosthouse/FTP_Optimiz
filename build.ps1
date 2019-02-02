param(
    [string]$pandocDir = "$PSScriptRoot\pandoc",
    [string]$output = "$PSScriptRoot\export",
    [string]$format = "pdf",
    [switch]$toc,
    [string]$file = "*.md",
    [string]$metadata,
    [switch]$combine
)

$pandocExe = "$pandocDir\pandoc-2.5-windows-x86_64\pandoc.exe"

# Inline If functionality
Function IIf($If, $IfTrue, $IfFalse) {
    If ($If) {If ($IfTrue -is "ScriptBlock") {&$IfTrue} Else {$IfTrue}}
    Else {If ($IfFalse -is "ScriptBlock") {&$IfFalse} Else {$IfFalse}}
}

# If compiling to PDF, check if a PDF generator is installed
if ($format -eq "pdf") {
    if ($null -eq (Get-Command "pdftex.exe" -ErrorAction SilentlyContinue) ) {
        "PDFTEX is not installed. Please install it and run this script again"
        exit
    }
}

# Check if pandoc is avaiable
if ( -not(Test-Path $pandocExe)) {
    $url = "https://github.com/jgm/pandoc/releases/download/2.5/pandoc-2.5-windows-x86_64.zip"
    
    $zipName = "pandoc-2.5-windows-x86_64.zip"
    $start_time = Get-Date

    New-Item -ItemType directory -ErrorAction Ignore -Path  "$PSScriptRoot\pandoc"

    if ( -not(Test-Path("$pandocDir\$zipName"))) {
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-WebRequest -Uri $url -OutFile "$pandocDir\$zipName"
        Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"    
    }
    
    Expand-Archive "$pandocDir\$zipName" -DestinationPath $pandocDir
}



# Check if export directory is avaiable
if ( -not(Test-Path $output)) {
    New-Item -ItemType directory -ErrorAction Ignore -Path  $output 
}

# Generate list of all markdown files
$documents = Get-ChildItem -Filter $file
if (![string]::IsNullOrEmpty($metadata)) {
    $documents.AppendText(" $metadata")
}

if ($combine) {
    $fileName = "Optimize"
    & $pandocExe $documents `
        --from markdown `
        --to (IIf ($format -eq "pdf") latex $format) `
        --standalone `
        --output "$output\$fileName.$format" `
        --extract-media "$output\media" `
        --filter pandoc-citeproc `
        --metadata-file "metadata.yaml" `
    (IIf ($toc) --toc "") `

}
else {
    # Generate output with pandoc
    foreach ($doc in $documents) {
        "Generating document $doc"
        $fileName = $doc.Basename
        & $pandocExe $doc `
            --from markdown `
            --to (IIf ($format -eq "pdf") latex $format) `
            --standalone `
            --output "$output\$fileName.$format" `
            --extract-media "$output\media" `
            --filter pandoc-citeproc `
            --metadata-file "metadata.yaml"
        (IIf ($toc) --toc "") `

    }

}


Write-Output "Finished build"