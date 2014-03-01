FROM muratayusuke/chef-solo-berkshelf3

ENV LANG C.UTF-8

RUN mkdir -p /tmp/global
ADD ./solo.rb /etc/chef/solo.rb
ADD ./node.json /etc/chef/node.json
ADD ./Berksfile /tmp/global/Berksfile
ADD ./attributes /tmp/global/attributes
ADD ./recipes /tmp/global/recipes
ADD ./install_cmds.sh /tmp/global/install_cmds.sh
ADD ./metadata.rb /tmp/global/metadata.rb
ADD ./README.md /tmp/global/README.md
RUN /tmp/global/install_cmds.sh