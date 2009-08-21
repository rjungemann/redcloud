class RedCloud < Sinatra::Base
  enable :sessions
  
  get "/" do
    erb :'index.html'
  end
  
  get "/new" do
    erb :'new.html'
  end
  
  post "/new" do
    uuid = $uuid.generate
    title, script = params[:title], params[:script]
    
    raise "No title was given." if title.nil? or title.empty?
    raise "No script was given." if script.nil? or title.empty?
    
    secret = $uuid.generate
    
    $db[uuid] = {
      :uuid => uuid,
      :secret => secret,
      :title => params[:title],
      :script => params[:script],
      :created_on => Time.now,
      :last_updated => Time.now
    }
    redirect "/#{uuid}/edit?secret=#{secret}"
  end
  
  get "/:uuid/edit" do
    @uuid = params[:uuid]
    @secret = params[:secret]
    @item = $db[@uuid]
    @secret = params[:secret]
    
    raise "Script doesn't exist." if @item.nil?
    raise "Secret wasn't provided." if @secret.nil?
    raise "Secret doesn't match." if @secret != @item[:secret]
    
    erb :'script_edit.html'
  end
  
  post "/:uuid/edit" do
    uuid = params[:uuid]
    secret = params[:secret]
    item = $db[uuid]
    
    raise "Script doesn't exist." if item.nil?
    raise "Secret wasn't provided." if secret.nil?
    raise "No title was given." if title.nil? or title.empty?
    raise "No script was given." if script.nil? or title.empty?
    raise "Secret doesn't match." if secret != item[:secret]
    
    item[:title] = params[:title],
    item[:script] = params[:script],
    item[:last_updated] = Time.now
    
    $db[uuid] = item
    
    redirect "/#{uuid}"
  end
  
  get "/:uuid/view" do
    @uuid = params[:uuid]
    @item = $db[@uuid]
    
    erb :'script_view.html'
  end
  
  get "/:uuid" do
    uuid = params[:uuid]
    item = $db[uuid]
    
    raise "Script doesn't exist." if item.nil?
    
    Johnson.evaluate(item[:script], :params => params, :sessions => session).to_s;
  end
  
  post "/:uuid" do
    uuid = params[:uuid]
    item = $db[uuid]
    
    raise "Script doesn't exist." if item.nil?
    
    Johnson.evaluate(item[:script], :params => params, :sessions => session).to_s;
  end
end