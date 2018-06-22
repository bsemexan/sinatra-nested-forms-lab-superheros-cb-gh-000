require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:members].each do |tm|
        Member.new(name: tm[:name], power: tm[:power], bio: tm[:bio])
      end
      @member = Member.all
      erb :team
    end


end
