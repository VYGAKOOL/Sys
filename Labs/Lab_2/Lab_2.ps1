$file_path = Read-Host 'Hi, please, write file path which you want to parse'

$file = Get-content $file_path

$regex = '(20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|30|31)  ([0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])'
# Select-String $regex -input $file

gc $file_path | Select-String -Pattern $regex -AllMatches | ForEach-Object {$_.matches.groups[0].value} | Sort-Object -Descending
echo "Good luck!"
