class ChickenRun < ApplicationRecord
  has_many :orders, dependent: :destroy
end
