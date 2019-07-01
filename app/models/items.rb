class Items < ApplicationRecord
  belongs_to :merchant
  validates_presence_of :name, :description, :price, :image, :status, :quantity, :merchant
end
