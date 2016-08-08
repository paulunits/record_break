get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  @user = User.create(params)
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @u_id = @user.id
  @albums = Album.where(user_id: @u_id)
  erb :'users/show'
end