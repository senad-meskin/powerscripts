# Build by Senad Meskin, 
# TW: @senadmeskin
# ---------------------- 
$guid = [guid]::NewGuid().ToString();

Set-Clipboard -Value $guid;

Write-Host 'Guid:' $guid 'copied to the clipboard!';
