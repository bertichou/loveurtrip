class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.integer :bed_room
      t.integer :bath_room
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :is_wifi
      t.boolean :is_tv
      t.boolean :is_pool
      t.boolean :is_closet
      t.boolean :is_shampoo
      t.boolean :is_breakfast
      t.boolean :is_heating
      t.boolean :is_air
      t.boolean :is_kitchen
      t.boolean :is_elevator
      t.boolean :is_essantials
      t.boolean :is_washer
      t.integer :price
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
