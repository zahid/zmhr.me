execute "npm module installation" do
  cwd "/home/vagrant/workspace/#{node['project']['name']}"
  command <<-COMMAND
    npm install . --no-optional --no-bin-links
  COMMAND
end
