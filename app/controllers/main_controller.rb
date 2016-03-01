MyApp.get "/" do
  erb :"login/home"
end

MyApp.post "/login_user" do
  @user = find_by_email(params["email"])
  if @user != nil && @user.password == params["password"]
    session["user_id"] = @user.user_id
    redirect "welcome"
  else
    erb :"login_fail"
  end
end

MyApp.get "/logout" do
  session["user_id"] = nil
  redirect "login/home"
  
end
MyApp.get "/enter_error" do
  @user = User.find_by_id(session[:user_id])
  @user.user_id = @user.user_id
  @user.error_name = params[:error]
  @user.save
  redirect "results"
end