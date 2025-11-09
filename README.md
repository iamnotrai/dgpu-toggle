# dgpu-toggle
Disable or Enable dGpu without go to Device Manager

## Installation

Change the File Toggle-dGPU.ps1

$gpuName = "NVIDIA GeForce RTX 3050 Laptop GPU"

to

$gpuName = "(gpu you are using)"

Then Change the Toggle-dGPU.bat

powershell.exe -ExecutionPolicy Bypass -File "(Toggle-dGPU.ps1 file location)"

Example:

powershell.exe -ExecutionPolicy Bypass -File "C:\Users\gpu-toggle\Toggle-dGPU.ps1"
