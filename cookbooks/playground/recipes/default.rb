#
# Cookbook Name:: playground
# Recipe:: default
#
# Copyright 2014, viasto GmbH
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update" do
  ignore_failure true
end
