cd C:\Users\AzureUser
mkdir azagent
mkdir sourabh
cd C:\Users\AzureUser\azagent
invoke-WebRequest -Uri https://agent09090.s3.ap-south-1.amazonaws.com/vsts-agent-win-x64-2.170.1.zip -OutFile vsts-agent-win-x64-2.170.1.zip
Expand-Archive -LiteralPath C:\Users\AzureUser\azagent\vsts-agent-win-x64-2.170.1.zip -DestinationPath C:\azagent\vsts-agent-win-x64-2.170.1 
Start-Sleep -s 60
.\config.cmd --unattended --url "https://dev.azure.com/SimplifyGroup" --auth pat --token "wacar63k5zhgfv3p3fsatew2meolskh4e3t5azzogbfge3hx57rq" --pool "ZF" --agent "windows" --runAsService
Stop-Transcript
exit 0
