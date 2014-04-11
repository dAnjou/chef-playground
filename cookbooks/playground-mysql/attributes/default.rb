mysql_creds = Chef::EncryptedDataBagItem.load "mysql", "passwords", "topsecret"
default["mysql"]["server_root_password"] = mysql_creds[node.chef_environment]['server_root_password']
