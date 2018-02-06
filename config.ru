require "./app.rb"
system "sidekiq -d -C ./config/sidekiq.yml -r ./app.rb -L ./logs/sidekiq.log"
run App
