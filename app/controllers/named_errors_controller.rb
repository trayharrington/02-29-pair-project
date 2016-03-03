MyApp.before "/named_errors*" do
  @current_user = User.find_by_id(session["user_id"])
    if @current_user == nil
      redirect "/logins/new"
    elsif @current_user != 1
      erb :"admins/admin_only"
    end
end

MyApp.get "/named_errors/new" do
  @nerrors = NamedError.all
  erb :"admins/new"
end

MyApp.post "/named_errors/create" do
  @nerror = NamedError.new
  @nerror.error_type = params["error_type"]
  @nerror.error_definition = params["error_definition"]
  @nerror.save
  redirect "/named_errors"
end

MyApp.get "/named_errors" do
  @nerrors = NamedError.all
  @resources = Resources.all
  erb :"admins/administrator"
end

MyApp.get "/named_errors/:id/edit" do
  @nerror = NamedError.find_by_id(params[:id])
  erb :"admins/edit"
end

MyApp.post "/named_errors/:id/update" do
  @nerror = NamedError.new
  @nerror.error_type = params["error_type"]
  @nerror.error_definition = params["error_definition"]
  @nerror.save
  redirect "/named_errors"
end

MyApp.post "/named_errors/:id/delete" do
  @nerror = NamedError.find_by_id(params[:id])
  @nerror.delete
  redirect "/named_errors"
end