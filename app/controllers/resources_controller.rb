MyApp.before "/resources*" do
  @current_user = User.find_by_id(session["user_id"])
    if @current_user == nil
      redirect "/logins/new"
    elsif @current_user != 1
      erb :"admins/admin_only"
    end
end

MyApp.get "/resources/new" do
  @nerrors = NamedError.all
  erb :"admins/new"
end

MyApp.post "/resources/create" do
  @resource = Resource.new
  @resource.error_type_id = params["error_type_id"]
  @resource.resource_url = params["resource_url"]
  @resource.save
  redirect "/resources"
end

MyApp.get "/resources" do
  @resources = Resource.all
  @nerrors = NamedError.all
  erb :"admins/administrator"
end

MyApp.get "/resources/:id/edit" do
  @resource = Resource.find_by_id(params[:id])
  erb :"admins/edit"
end

MyApp.post "/resources/:id/update" do
  @nerror = NamedError.new
  @nerror.error_type = params["error_type"]
  @nerror.error_definition = params["error_definition"]
  redirect "/resources"
end

MyApp.post "/resources/:id/delete" do
  @resource = Resource.find_by_id(params[:id])
  @resource.delete
  redirect "/resources"
end