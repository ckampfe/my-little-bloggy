### GET ###

# show all posts
get '/posts' do
  erb :index
end

# get post creation form
get '/posts/new' do
  erb :new
end

# show particular post
get '/posts/:id' do
  @post = Post.find(params[:id])
  @tags = @post.tags
  erb :post
end

# edit form
get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  @tags = tagstring(@post.tags)
  erb :edit
end

### POST ###

# submit create new post
post '/posts' do
  p = Post.create(:title => params[:title],
              :body => params[:body])
  # parse from string with helper
  tags = make_tags(params[:tags])
  # make and add to Post tags
  tags.each { |t| p.tags << Tag.create(:name => t) }
  redirect to ('/')
end

post '/posts/:id/edit' do
  p = Post.find(params[:id])
  p.title = params[:title]
  p.body = params[:body]
  p.tags = params[:tags]
  p.save
  erb :index
end

post 'posts/:id/delete' do
  # delete post
end
