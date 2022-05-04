class CreateProductLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :product_logs do |t|
      t.integer :action
      t.integer :product_id

      t.timestamps
    end
  end
end
