class ProductsConsumer < ApplicationConsumer
  def consume
    params_batch.each do |message|
      ProductLog.create(message.payload)
    end
  end
end
