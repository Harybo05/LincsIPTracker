while ($true) {
    $i++
  	
    $filedata = Get-Content C:\Users\Harrison\Documents\GTA5_MODS\WEBSITE\ping.txt -Tail 1 

    If ($filedata -eq 'False') { 
    
        Write-Host "Found trigger: $False" -ForegroundColor Red

        C:\Users\Harrison\Downloads\Untitled-1.ps1
        
    }Else {
        
        Write-Host "Not found: $True" -ForegroundColor Green

        C:\Users\Harrison\Downloads\Untitled-2.ps1
        

    }

    Start-Sleep -Seconds 10
}