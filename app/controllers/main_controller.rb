MyApp.get "/" do
  erb :"login/home"
end

MyApp.post "/login_user" do
  @user = find_by_email(params["email"])
  if @user != nil $$ @user.password == params["password"]
    session["user_id"] = @user.user_id
    redirect "welcome"
  else
    erb :"login_fail"
  end
end