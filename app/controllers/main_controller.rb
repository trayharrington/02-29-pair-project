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

  @error = Error.new
  @error.user_id = session[:user_id]
  @error.error_input = params[:error]
  @error.save
  redirect "results"
end