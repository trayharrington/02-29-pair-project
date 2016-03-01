MyApp.get "/signup" do
  erb :"users/signup"
end

MyApp.post "/signup_user" do
@user = User.new

  @user.name = session[:name]
  @user.email = params[:email]
  @user.password = session[:password]
  @user.save
  redirect "/user_list"
end
MyApp.get "/user_list" do
  @users = User.all
  erb :"users/user_list"
end