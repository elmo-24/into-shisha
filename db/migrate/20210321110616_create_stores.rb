class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :store_name, null: false
      t.integer :store_type_id
      t.string :postal_code, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.string :house_number, null: false
      t.string :phone_number, null: false
      t.string :building_name
      t.string :access, null: false
      t.string :home_page
      t.string :day_off
      t.string :opening_hours
      t.string :minimum_charge, null: false
      t.string :price_info
      t.integer :vibe_id
      t.integer :bring_id
      t.integer :concent_id
      t.integer :alcohol_id
      t.integer :smoke_id
      t.integer :flavor_sale_id
      t.integer :wifi_id
      t.integer :card_id
      t.text :additional_info
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
