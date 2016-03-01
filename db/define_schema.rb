require_relative "./_configure"
DB.define_table("users")
DB.define_column("users","name","string")
DB.define_column("users","email","string")
DB.define_column("users","password","string")

DB.define_table("errors")
DB.define_column("errors","error_input","text")
DB.define_column("errors","error_description","text")
DB.define_column("errors","user_id","string")
# DB.define_table("users")
# DB.define_column("users", "name", "string")
# DB.define_column("users", "email", "string")
# DB.define_column("users", "password", "string")