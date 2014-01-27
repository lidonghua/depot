class AddProductPriceToLineItems < ActiveRecord::Migration
  def self.up
    add_column :line_items, :price, :decimal, :precision => 8, :scale => 2

    LineItem.find(:all).each do |line_item|
      line_item.update_attribute :price, line_item.product.price
    end
  end

  def self.down
    remove_column :line_items, :price
  end
end
