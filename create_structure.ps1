# Define the base directory
$baseDir = "PSF-Survey-Data-Playground"

# Define the years
$years = 2020..2023

# Create the base directory if it doesn't exist
if (-Not (Test-Path -Path $baseDir)) {
    New-Item -Path $baseDir -ItemType Directory
}

# Change to the base directory
Set-Location -Path $baseDir

# Create the directory structure
foreach ($year in $years) {
    # Create year directories under data
    New-Item -Path ".\data\$year\raw" -ItemType Directory -Force
    New-Item -Path ".\data\$year\cleaned" -ItemType Directory -Force

    # Create year directories under examples
    New-Item -Path ".\examples\$year" -ItemType Directory -Force
}

# Create scripts directories
New-Item -Path ".\scripts\data_cleaning" -ItemType Directory -Force
New-Item -Path ".\scripts\data_exploration" -ItemType Directory -Force

# Create placeholder files
New-Item -Path ".\CONTRIBUTING.md" -ItemType File -Force

Write-Output "Directory structure created successfully."
