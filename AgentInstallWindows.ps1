cd C:\
mkdir azagent
cd C:\azagent
.\config.cmd --unattended --url "https://dev.azure.com/SimplifyGroup" --auth pat --token "wacar63k5zhgfv3p3fsatew2meolskh4e3t5azzogbfge3hx57rq" --pool "ZF" --agent "windows" --runAsService

Stop-Transcript
exit 0
