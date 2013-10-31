### GET ###

get '/posts' do 
  # show all posts
end

get '/posts/new' do
  # get post creation form
end

get '/posts/:id' do
  # show particular post
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


