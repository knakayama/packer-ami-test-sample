require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['TARGET_HOST']
options = Net::SSH::Config.for(host)
options[:user] = 'ec2-user'
options[:keys] = ENV['TARGET_PRIVATE_KEY']

set :host,        options[:host_name] || host
set :ssh_options, options
