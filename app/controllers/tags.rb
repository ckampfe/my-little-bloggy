get '/tag/:name' do
  @tag = params[:name]
  @posts = Tag.find_by_name(params[:name]).posts
  erb :results
end
