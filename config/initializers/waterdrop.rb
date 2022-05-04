WaterDrop.setup do |config|
  config.deliver = true
  config.kafka.seed_brokers = %w[kafka://localhost:9092]
  config.client_id = 'karafka_waterdrop'
  config.kafka.delivery_interval = 1
end
