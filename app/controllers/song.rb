require 'httparty'

get '/songs' do
  @songs = Song.order(:name)
  if request.xhr?
    erb :'songs/_song', layout: false, locals: {songs: @songs}
  else
    erb :'songs/index'
  end
end

get '/songs/new' do
  erb :'songs/new'
end

post '/songs' do
  @song = Song.create(params[:song])
  if @song.save
    redirect "/songs/#{@song.id}"
  else
    @errors = @songs.errors.full_messages
    erb :'songs/new'
  end
end

get '/songs/:id' do
  @song = Song.find(params[:id])
  @so_id = @song.id
  @so_search = @song.search_song(@song.name)
  p @so_search
  erb :'songs/show'
end