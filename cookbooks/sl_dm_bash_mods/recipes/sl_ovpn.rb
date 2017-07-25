
# this will copy vpn configurations to remote host
# intended to be use internally with virtual machines

user = "danielm"
home_dir = "/home/#{user}"

directory "#{home_dir}/openvpn_connections" do
  owner "#{user}"
  group "#{user}"
end

cookbook_file "#{home_dir}/openvpn_connections/SL-HQ.ovpn" do
  owner "#{user}"
  group "#{user}"
  source "openvpn/SL-HQ.ovpn"
  mode 0664
end

cookbook_file "#{home_dir}/openvpn_connections/SL-MetaPOD.ovpn" do
  owner "#{user}"
  group "#{user}"
  source "openvpn/SL-MetaPOD.ovpn"
  mode 0664
end

cookbook_file "#{home_dir}/openvpn_connections/SL-PRODv2-JCCFM-VPN.ovpn" do
  owner "#{user}"
  group "#{user}"
  source "openvpn/SL-PRODv2-JCCFM-VPN.ovpn"
  mode 0664
end

cookbook_file "#{home_dir}/openvpn_connections/SL-PRODv2-VPN.ovpn" do
  owner "#{user}"
  group "#{user}"
  source "openvpn/SL-PRODv2-VPN.ovpn"
  mode 0664
end
