MyApp.before "/errors*" do
  @current_user = User.find_by_id(session["user_id"])
    if @current_user == nil
      redirect "/logins/new"
    end
end

MyApp.get "/errors/new" do
  erb :"errors/new"
end

MyApp.post "/errors/create" do
  @error = Error.new
  @error.user_id = session[:user_id]
  @error.error_input = params[:error]
  
  @error.save
  redirect "/errors/#{@error.id}"
end

MyApp.get "/errors/:id" do
  @error = Error.find_by_id(params[:id])
  @error.process_error_input
  
  erb :"errors/results"
end