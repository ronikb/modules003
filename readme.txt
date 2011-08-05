
sudo apt-get install puppet
sudo apt-get install git-core
sudo ssh-keygen -t rsa 
sudo vi /root/.ssh/id_rsa.pub
cd /etc/puppet
sudo git clone git@github.com:ronikb/modules.git
move nodes.pp file from this repository to /etc/puppet/manifests/
Then run nodes.pp 