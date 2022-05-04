class Product < ApplicationRecord
  attr_accessor :action

  has_many :product_logs

  after_commit :add_log

  def add_log
    payload = { product_id: id, action: action }

    WaterDrop::SyncProducer.call(payload.to_json, topic: 'products_consumer')
  end
end
