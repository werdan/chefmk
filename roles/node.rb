name "node"
run_list "recipe[base_server]",
"recipe[webserver]"
default_attributes "apache" =>
                {"default_site_enabled" => true }
