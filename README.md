# bind
```bash
sudo yum remove -y do-agent && curl -sSL https://repos.insights.digitalocean.com/install.sh | sudo bash
sudo yum update -y && sudo yum install -y git
username=tarcar85
repo=bind
branch=$username
rm -rf $repo && git clone --single-branch --branch $branch https://github.com/$username/$repo && cd $repo && source setup.sh
```
