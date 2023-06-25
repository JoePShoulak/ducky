$TelnetStartedDisabled = ((Get-WindowsOptionalFeature -Online -FeatureName TelnetClient).State -ne "Enabled")

if ($TelnetStartedDisabled) { Enable-WindowsOptionalFeature -Online -FeatureName TelnetClient }

telnet towel.blinkenlights.nl

if ($TelnetStartedDisabled) { Disable-WindowsOptionalFeature -Online -FeatureName TelnetClient }
