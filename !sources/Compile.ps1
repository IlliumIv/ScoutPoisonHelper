$dirName = Split-Path -Path ..\ -Leaf
Remove-Item ..\"$dirName.pak"
foreach ($file in Get-ChildItem -Name *.lua) { $newName = $file.Split(".")[0]; cmd /c start ".\luajit-2.0.5.exe" -b $file ..\"$newName.luac"; }
mkdir Mods\Addons\$dirName
Copy-Item -Recurse -Exclude ".*","!*","*.md",".pak" ..\* Mods\Addons\$dirName
7z u "..\$dirName.zip" Mods
Move-Item "..\$dirName.zip" "..\$dirName.pak"
Remove-Item -Recurse -Force Mods