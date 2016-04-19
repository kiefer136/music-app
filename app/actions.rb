get '/' do
  erb :index
end

get '/videos' do
  @videos = Video.all
  erb :'videos/index'
end

get '/videos/new' do
  @video = Video.new
  erb :'videos/new'
end

post '/videos' do
  @video = Video.new(
    title:   params[:title],
    author:  params[:author],
    embed: params[:embed]
  )
  if @video.save
    redirect '/videos'
  else
    erb :'videos/new'
  end
end

get '/videos/:id' do
  @video = Video.find params[:id]
  erb :'videos/show'
end