$root = "C:\UOS_ECE_project6"; $repo = "https://github.com/bandnewbie/UOS_ECE_project6"
Set-Location $root
$hash = (git rev-parse HEAD).Trim()
$commitUrl = "[$($hash.Substring(0,7))]($repo/commit/$hash)"
$today = Get-Date -Format "yyyy-MM-dd"
$utf8 = New-Object System.Text.UTF8Encoding($false)
Get-ChildItem "$root\reports\post\*.md" | ForEach-Object {
  $t = [IO.File]::ReadAllText($_.FullName, $utf8)
  $t = $t.Replace("{{COMMIT_URL}}", $commitUrl).Replace("{{DATE}}", $today)
  [IO.File]::WriteAllText($_.FullName, $t, $utf8)
  "{0} done" -f $_.Name
}
"commit: $hash"
