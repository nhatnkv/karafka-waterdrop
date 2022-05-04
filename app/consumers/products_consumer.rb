class ProductsConsumer < ApplicationConsumer
  def consume
    params_batch.each do |message|
      puts "Message payload: #{message.payload}"
    end
  end
end