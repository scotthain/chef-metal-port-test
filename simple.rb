require 'chef_metal'


  mario_config = <<-ENDCONFIG
    config.vm.box = "precise64"
    config.vm.network "forwarded_port", guest: 443, host: 9443
  ENDCONFIG

  luigi_config = <<-ENDCONFIG
    config.vm.box = "precise64"
    config.vm.network "forwarded_port", guest: 459, host: 9488
  ENDCONFIG

machine 'mario' do
  tag 'itsa_me'
  machine_options :vagrant_config => mario_config
  converge true
end

machine 'luigi' do
  tag 'itsa_me'
  machine_options :vagrant_config => luigi_config
  converge true
end
