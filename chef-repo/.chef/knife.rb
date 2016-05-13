# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options
#
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kwong"
client_key               "#{current_dir}/kwong.pem"
validation_client_name   "shomidevken-validator"
validation_key           "#{current_dir}/shomidevken-validator.pem"
chef_server_url          "https://dev-chef-server-ken.shomi.com/organizations/shomidevken"
cookbook_path            ["#{current_dir}/../cookbooks"]
