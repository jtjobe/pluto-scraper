require_relative "config/initialize"

class App < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    puts "SUP"
    puts Sidekiq::Stats.new.inspect
  end

  get "/go" do
    ScraperWorker.perform_async
  end

  get "/sidekiq" do
    Sidekiq::Web
  end

end
