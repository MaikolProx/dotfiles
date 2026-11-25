function Set-Utf8 {
    chcp 65001 > $null
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $env:PYTHONIOENCODING = "utf-8"
    $env:PYTHONUTF8 = "1"
}

$VaultPath = if ($env:VAULT_PATH) { $env:VAULT_PATH } else { "C:\Cerebro" }

function medusa {
    Set-Utf8
    Set-Location $VaultPath
    opencode
}

function jarvis {
    & (Join-Path $VaultPath "jarvis_control.ps1") @args
}

function hermes {
    Set-Utf8
    Set-Location $VaultPath
    python (Join-Path $VaultPath "scripts\hermes_architect.py") --interactive
}
