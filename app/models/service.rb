class Service < ApplicationRecord
  belongs_to :user
  has_many :orders

#// validates :name, :price, :description, presence: true
end
