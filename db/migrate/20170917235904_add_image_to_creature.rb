class AddImageToCreature < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :image, :string
  end
end
