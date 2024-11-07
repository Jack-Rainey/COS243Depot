class AddQuantityToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :quanity, :integer, default: 1
  end
end
