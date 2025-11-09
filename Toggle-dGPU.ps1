# Toggle NVIDIA RTX 3050 On/Off
$gpuName = "NVIDIA GeForce RTX 3050 Laptop GPU"
$device = Get-PnpDevice | Where-Object { $_.FriendlyName -eq $gpuName }

if ($device) {
    if ($device.Status -eq "OK") {
        Start-Sleep -Milliseconds 500
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
        Write-Host "$gpuName disabled (battery mode)."
    } else {
        Start-Sleep -Milliseconds 500
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
        Write-Host "$gpuName enabled (performance mode)."
    }
} else {
    Write-Host "❌ GPU not found."
}
