get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

post '/' do
  @some_text = params["some_text"]
  erb :post_index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  binding.pry
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end
# get '/?grandma=hey' do
#   "yolo"
# end

get "/?text = hey" do
  @text = params["text"]
  puts @text
  erb :post_cool_url
end


