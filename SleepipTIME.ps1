$file = "C:\Users\Harrison\Documents\GTA5_MODS\WEBSITE\ping.txt"
while($true){
    $i++
    $ping = Test-Connection -Ping -IPV4 -Count 4 -TimeoutSeconds 3 -TargetName 145.239.5.110
    for ($p = 0; $p -lt $ping.length; $p++) {

        if($ping[$p].Status -eq "Success"){
            Write-Host -ForegroundColor Green $ping[$p].Status
            $result = "True"
        }else{
            Write-Host -ForegroundColor Red $p.Status
            $result = "False"
            break
        }
    }
    $result | Out-File $file
    Start-Sleep -Seconds 20
}

