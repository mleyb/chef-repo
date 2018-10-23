name 'web'
description 'Web Server'
run_list 'recipe[apache]'
run_list 'role[base]', 'recipe[haproxy]'
default_attributes({
    "apache" => {
        "port" => 8181
    }
})
