class Order < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :service_id, uniqueness: true, presence: true
  validates :user_id, uniqueness: true, presence: true
end
