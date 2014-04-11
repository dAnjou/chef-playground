name "database"
description "The base role for systems that run a database"
mysql_creds = Chef::EncryptedDataBagItem.load "mysql", "passwords", "topsecret"
default_attributes "mysql" => {
	"server_root_password" => "#{mysql_creds['vagrant']['server_root_password']}"
}
