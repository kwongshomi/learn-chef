# learn-chef

###List cookbooks on Chef server

```
$ knife cookbook list
```

###List all bootstrapped nodes

```
knife node list
```

###List some info about a node

```
knife node show dev-chef-node-ken
```

###Add new cookbook to runlist of an existing node

```
knife node run_list add dev-chef-node-ken 'recipe[s_ntptest]'
```

###Remove a cookbook from runlist of an existing node

```
knife node run_list remove dev-chef-node-ken 'recipe[awesome_customers_rhel]'
```

###Force a Chef client run on node

```
knife ssh 52.90.35.143 'sudo chef-client' --manual-list --ssh-user centos --identity-file /Users/ken.wong/.ssh/kenwongshomicom.pem
```

###Berks upload SSL Failure

Try setting this env var to the location of the Chef server cert

```
export SSL_CERT_FILE="/Users/ken.wong/learn-chef/chef-repo/.chef/trusted_certs/dev-chef-server-ken_shomi_com.crt"
```

then re-run berks (for example):

```
cd /Users/ken.wong/learn-chef/chef-repo/cookbooks/s_ntptest/
berks install
berks upload
```
