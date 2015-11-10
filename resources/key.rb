property :keyserver, String, default: ''
property :recv_keys, String, default: ''

action :adv do
  execute 'apt_key adv' do
    command "apt-key adv --keyserver #{keyserver} --recv-keys #{recv_keys}"
    action :run
  end
end
