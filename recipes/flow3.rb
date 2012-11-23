
include_recipe "chef-oh-my-zsh::default"

node[:oh_my_zsh][:users].each do |zsh_user|

	#install zsh plugin for FLOW3
	script "install flow3 zsh plugin" do
		interpreter "zsh"
		user zsh_user
		code <<-EOH
		git clone https://github.com/sandstorm/oh-my-zsh-flow3-plugin.git /home/#{zsh_user}/.oh-my-zsh/custom/plugins/flow3
		sudo chown -R vagrant:www-data /home/#{zsh_user}/.oh-my-zsh/custom/plugins/flow3
		sudo chmod 777 /home/#{zsh_user}/.oh-my-zsh/custom/plugins/flow3/helper-postprocess-cmdlist.php
		EOH
		not_if {File.exists?("/home/#{zsh_user}/.oh-my-zsh/custom/plugins/flow3/helper-postprocess-cmdlist.php")}
	end

end
