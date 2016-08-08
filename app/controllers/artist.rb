require 'httparty'

get '/artists' do
  @artists = Artist.order(:name)
  if request.xhr?
    erb :'artists/_artist', layout: false, locals: {artists: @artists}
  else
    erb :'artists/index'
  end
end

get '/artists/new' do
  erb :'artists/new'
end

post '/artists' do
  @artist = Artist.create(params[:artist])
  if @artist.save
    redirect "/artists/#{@artist.id}"
  else
    @errors = @artist.errors.full_messages
    erb :'artists/new'
  end
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  @ar_id = @artist.id
  @albums = Album.where(artist_id: @ar_id)

  @ar_search = @artist.search_artist(@artist.name)
  p @ar_search
  erb :'artists/show'
end
