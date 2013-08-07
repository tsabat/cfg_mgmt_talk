name "production"
description "The production role"
run_list "recipe[hello_service]"
override_attributes "hello_service" => 
  {
    'port_number' => '4000'
  }
