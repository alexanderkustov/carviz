class AddCarphotoToCars < ActiveRecord::Migration
  def change
    add_column :cars, :carphoto, :string
  end
end
