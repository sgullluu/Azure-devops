cd C:\
mkdir azagent
mkdir sourabh
cd C:\azagent
invoke-WebRequest -Uri https://drive.google.com/file/d/16ulz7adwIuZF36Hobw4VUw3r0hORP67W/view?usp=sharing -OutFile vsts-agent-win-x64-2.170.1.zip
Expand-Archive -LiteralPath C:\azagent\vsts-agent-win-x64-2.170.1.zip -DestinationPath C:\azagent\vsts-agent-win-x64-2.170.1 
.\config.cmd --unattended --url "https://dev.azure.com/SimplifyGroup" --auth pat --token "wacar63k5zhgfv3p3fsatew2meolskh4e3t5azzogbfge3hx57rq" --pool "ZF" --agent "windows" --runAsService
Stop-Transcript
exit 0
