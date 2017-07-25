users = [ "danielm" ]

users.each do |user| 
  home_dir = "/home/#{user}"
  directory "#{home_dir}/.ssh" do
    action :create
  end

  cookbook_file "#{home_dir}/.ssh/authorized_keys" do 
    source "authkeys" 
    mode 0664
  end
end


