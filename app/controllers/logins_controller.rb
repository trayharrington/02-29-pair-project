MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/logins/new" do
  erb :"logins/new"
end

MyApp.post "/logins/create" do
  @user = User.find_by_email(params["email"])

  if @user != nil && @user.password == params["password"]
    session["user_id"] = @user.id
    redirect "/"
  else
    erb :"logins/fail"
  end
end

MyApp.get "/logins/delete" do
  session["user_id"] = nil
  redirect "/"
end