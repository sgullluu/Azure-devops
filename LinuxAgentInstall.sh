#!/bin/sh
cd /home/AzureUser;mkdir azagent;cd azagent;curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.170.1/vsts-agent-linux-x64-2.170.1.tar.gz;
sleep 5;
tar -zxvf vstsagent.tar.gz;
sleep 10;
sudo -E bin/Agent.Listener configure --unattended --nostart --replace --acceptteeeula --pool ZF --agent Linux  --url https://dev.azure.com/SimplifyGroup/ --auth pat --token wacar63k5zhgfv3p3fsatew2meolskh4e3t5azzogbfge3hx57rq
sudo ./svc.sh install
sudo ./svc.sh start
