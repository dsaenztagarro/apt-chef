property :packages, RubyType

action :install do
  execute 'apt_get_install' do
    command "apt-get install -y #{packages}"
    action :run
  end
end

action :update do
  execute 'apt_get_update' do
    command 'apt-get update'
    action :run
  end
end
