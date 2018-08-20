class AddOrderToChickenRun < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :chicken_run, foreign_key: true
  end
end
