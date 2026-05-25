# 1. On prépare TOUTES les commandes sur une seule ligne logique avec des points-virgules
# color 0F : fond noir (0), texte blanc brillant (F)
$DebugCode = "cmd.exe /c color 0F; Clear-Host; " +
             "Write-Host '=================================' -ForegroundColor Cyan; " +
             "Write-Host 'Hello, World ! Appelé en powershell distant !' -ForegroundColor Green; " +
             "Write-Host 'Le test irm | iex a reussi.' -ForegroundColor Yellow; " +
             "Write-Host '=================================' -ForegroundColor Cyan"

# 2. On l'exécute en protégeant la chaîne avec des guillemets doubles échappés (`")
Start-Process powershell.exe -ArgumentList "-NoExit", "-NoProfile", "-ExecutionPolicy Bypass", "-Command `"$DebugCode`"" -WindowStyle Normal

Start-Process notepad -WindowStyle Maximized
