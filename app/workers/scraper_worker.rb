class ScraperWorker
  include Sidekiq::Worker

  def perform
    puts "SUP MOFO"
  end
end
