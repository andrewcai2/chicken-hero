class Order < ApplicationRecord
  belongs_to :chicken_run
  has_many :items, dependent: :destroy
end
