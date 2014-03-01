export PATH=$PATH:/opt/chef/embedded/bin/
cd /tmp/global
berks vendor /etc/chef/cookbooks/
cp -r /tmp/global /etc/chef/cookbooks/
chef-solo
global --version
