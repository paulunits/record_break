get '/albums' do
  @albums = Album.order(:title)
   if request.xhr?
    erb :'albums/_album', layout: false, locals: {albums: @albums}
  else
    erb :'albums/index'
  end
end

get '/albums/new' do
  erb :'albums/new'
end

post '/albums' do
  @album = Album.create(params[:album])

  if @album.save
    redirect "/albums/#{@album.id}"
  else
    @errors = @album.errors.full_messages
    erb :'albums/new'
  end
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb :'albums/show'
end


put '/albums/:id' do
  @album = Album.find(params[:id])
  @album.update_attributes(params[:album])
  redirect "/albums/#{@album.id}"
end