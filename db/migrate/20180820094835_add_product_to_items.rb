class AddProductToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :product, foreign_key: true
    add_column :items, :quantity, :integer
  end
end
