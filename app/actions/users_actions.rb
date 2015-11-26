get '/users' do
  @users = User.all
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new', :layout => :layout_landing
end

get '/users/signin' do
  erb :'users/signin', :layout => :layout_landing
end

get '/users/signout' do
  session.clear
  redirect '/articles'
end

get '/users/:id' do
  @user = User.find_by_id params[:id]
  if @user
    @total_likes = total_user_likes(@user)
    @user_rank = user_ranking(@user)
    @bookmarks = list_bookmarks
    erb :'users/show'
  else
    erb :'error'
  end
end

post '/users' do
  user = User.create(params[:user])
  if user.persisted?
    session[:user_id] = user.id
    redirect '/articles'
  else
    redirect '/users/new'
  end
end

post '/users/signin' do
  user = User.find_by(email: params[:email])
  if user.email && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/articles'
  else
    redirect '/users/signin'
  end    
end