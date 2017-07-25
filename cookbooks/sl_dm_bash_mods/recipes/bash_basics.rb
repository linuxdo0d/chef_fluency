
# will take care of bashrc, bash_aliases, vimrc

# change this to username
user = "danielm"

# change this to whatever your homedir is 
home_dir = "/home/#{user}"

cookbook_file "#{home_dir}/.bash_aliases" do
  owner "#{user}"
  group "#{user}"
	source "bash_aliases"
	mode "0664"
end

cookbook_file "#{home_dir}/.bashrc" do
  owner "#{user}"
  group "#{user}"
	source "bashrc"
	mode "0664"
end

cookbook_file "#{home_dir}/.vimrc" do
  owner "#{user}"
  group "#{user}"
	source "vimrc"
	mode "0664"
end

