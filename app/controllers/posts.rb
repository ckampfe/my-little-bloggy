### GET ###

# show all posts
get '/posts' do 
  erb :index
end

get '/posts/new' do
  # get post creation form
  erb :new
end

# show particular post
get '/posts/:id' do
  @post = Post.find(params[:id])
  @tags = @post.tags 
  erb :post
end

get '/posts/:id/edit' do
  # edit post
end
  

### POST ###

post '/posts' do
  # submit create new post
end

post '/posts/:id/edit' do
  # submit post edit
end 

post 'posts/:id/delete' do
  # delete post
end
