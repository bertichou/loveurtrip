class AddDetailsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :is_sauna, :boolean
  end
end
