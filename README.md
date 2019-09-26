# bind
```bash
username=secobau
repo=bind
branch=thales
sudo yum update -y && sudo yum install -y git
sudo yum remove -y do-agent && curl -sSL https://repos.insights.digitalocean.com/install.sh | sudo bash
rm -rf $repo && git clone --single-branch --branch $branch https://github.com/$username/$repo && cd $repo && source setup.sh
```
