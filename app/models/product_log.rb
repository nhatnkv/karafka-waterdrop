class ProductLog < ApplicationRecord
  belongs_to :product

  enum action: { creating: 0, updating: 1 }
end
