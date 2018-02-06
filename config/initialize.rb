require "sinatra/base"
require "sinatra/reloader"

require "sidekiq"
require "sidekiq/api"
require 'sidekiq/web'

require "./app/workers/scraper_worker.rb"
