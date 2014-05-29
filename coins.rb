class Coins < Sinatra::Base
  APP_STORE_URL = 'https://itunes.apple.com/app/id787299853?mt=8&uo=4&at=1l3vmtU'.freeze
  GOOGLE_PLAY_URL = 'https://play.google.com/store/apps/details?id=com.nothingmagical.coins'.freeze

  helpers Sinatra::ContentFor2

  get '/' do
    erb :home
  end

  get '/support' do
    erb :support
  end

  get '/press' do
    erb :press
  end

  get '/download' do
    redirect '/download/ios'
  end

  get '/download/ios' do
    redirect APP_STORE_URL
  end

  get '/download/android' do
    redirect GOOGLE_PLAY_URL
  end
end
