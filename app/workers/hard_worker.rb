class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Hello Sushmitha"
  end
end
