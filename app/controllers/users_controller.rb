MyApp.get "/users/new" do
  erb :"users/new"
end

MyApp.post "/users/create" do
  @user = User.new
  @user.name = params[:name]
  @user.email = params[:email]
  @user.password = params[:password]
  @user.save
  redirect "/users"
end

MyApp.get "/users" do
  @users = User.all
  erb :"users/index"
end

MyApp.get "/users/:id/edit" do
  @user = User.find_by_id(params[:id])
  erb :"users/edit"
end

MyApp.post "/users/:id/update" do
  @user = User.find_by_id(params[:id])
  @user.name = params[:edit_name]
  @user.email = params[:edit_email]
  @user.password = params[:edit_password]
  @user.save
  redirect "/users"
end

MyApp.post "/users/:id/delete" do
  @user = User.find_by_id(params[:id])
  @user.delete
  redirect "/users"
end