# Define the base registry path
$baseRegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR\Rules"

# Ensure the registry path exists
if (-not (Test-Path $baseRegPath)) {
    New-Item -Path $baseRegPath -Force
}

# List of ASR rule GUIDs
$asrGuids = @(
    "26190899-1602-49e8-8b27-eb1d0a1ce869",
    "3b576869-a4ec-4529-8536-b80a7769e899",
    "5beb7efe-fd9a-4556-801d-275e5ffc04cc",
    "75668c1f-73b5-4cf0-bb93-3ecf5cb7cc84",
    "7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c",
    "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b",
    "9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2",
    "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4",
    "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550",
    "d3e037e1-3eb8-44c8-a917-57927947596d",
    "d4f940ab-401b-4efc-aadc-ad5f3c50688a",
    "e6db77e5-3df2-4cf1-b95a-636979351e5b"
)

# Set each rule to a value of 1 in the registry
foreach ($guid in $asrGuids) {
    $rulePath = Join-Path -Path $baseRegPath -ChildPath $guid
    if (-not (Test-Path $rulePath)) {
        New-Item -Path $rulePath -Force
    }
    Set-ItemProperty -Path $rulePath -Name "Action" -Value 1
}

