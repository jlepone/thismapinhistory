require_relative './models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/map' do
    @state = params[:state]
    @date = params[:date]
    init = Fact.new(@state, @date)
    @fact = init.get_fact
    erb :map
  end
end