require_relative "./_configure"
DB.define_table("users")
DB.define_column("users","name","string")
DB.define_column("users","email","string")
DB.define_column("users","password","string")

DB.define_table("errors")
DB.define_column("errors","error_input","text")
DB.define_column("errors","user_id","integer")


DB.define_table("named_errors")
DB.define_column("named_errors","error_type","string")
DB.define_column("named_errors","error_definition","string")

DB.define_table("resources")
DB.define_column("resources","error_type_id","integer")
DB.define_column("resources","resource_url","string")