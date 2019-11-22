require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirate' do
      @pirate = Pirate.new(params)
      @ship = Ship.new(args)
      erb :'pirates/show'
    end

  end
end
