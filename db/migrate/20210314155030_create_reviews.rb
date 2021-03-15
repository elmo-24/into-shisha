class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.date :visit_date, null: false
      t.text :message, null: false
      t.string :flavor, null: false
      t.integer :companion_id, null: false
      t.string :price, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
