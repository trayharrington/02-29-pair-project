MyApp.get "/errors/new" do
  erb :"errors/new"
end

MyApp.post "/errors/create" do
  @error = Error.new
  @error.user_id = session[:user_id]
  @error.error_input = params[:error]
  @error.save
  redirect "/errors/results"
end

MyApp.get "/errors/results" do
  @user = User.find_by_id(session["user_id"])
  @error = Error.where({"user_id" => @user.id})
  erb :"errors/results"
end