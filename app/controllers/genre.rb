get '/genres' do
  @genres = Genre.order(:name)
   if request.xhr?
    erb :'genres/_genre', layout: false, locals: {genres: @genres}
  else
    erb :'genres/index'
  end
end

get '/genres/new' do
  erb :'genres/new'
end

post '/genres' do
  @genre = Genre.create(params[:genre])
  if @genre.save
    redirect "/genres/#{@genre.id}"
  else
    @errors = @genre.errors.full_messages
    erb :'genres/new'
  end
end

get '/genres/:id' do
  @genre = Genre.find(params[:id])
  erb :'genres/show'
end