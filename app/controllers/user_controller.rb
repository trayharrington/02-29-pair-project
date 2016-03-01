MyApp.get ""

MyApp.post "/signup_user" do
@user = User.new
@users = User.all
  @user.name = session[:name]
  @user.email = params[:email]
  @user.password = session[:password]
  @user.save
  redirect "user_list"
end
MyApp.get "/user_list"