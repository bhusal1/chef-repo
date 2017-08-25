#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install apache

package 'httpd' do
	action :install
end

service 'httpd' do
	action [:start, :enable]
end

file '/var/www/html/index.html' do
	content 'welcome to my Home page'

end

#install tree

package 'tree' do
	action :install
end
