require 'sinatra/base'

class App < Sinatra::Base

    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
    )

    set :views, Proc.new { File.join(root, "../views/") }
    register Sinatra::ActiveRecordExtension

    get '/' do
      erb :super_hero
    end

    post '/team' do
      erb :team
    end

end
