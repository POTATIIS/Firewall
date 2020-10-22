$portar = import-csv -delimiter ";" -path "C:\code\powershell\firewall\port.csv"

foreach ($port in $portar) {
    New-NetFirewallRule -DisplayName $port.protokoll -Direction Outbound -Protocol TCP -LocalPort $port.port -Action $port.regel
    write-host "Porten" $port.port "är nu" $port.regel
}