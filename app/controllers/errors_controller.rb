MyApp.get "/enter_error" do
@user = User.find_by_id(session[user_id])
  @error = Error.new
  @error.user_id = session[:user_id]
  @error.error_input = params[:error]
  @error.save
  redirect "results"
end