class CreateGuestHouses < ActiveRecord::Migration
  def change
    create_table :guest_houses do |t|
      t.string :name
      t.integer :city_id
      t.integer :stars_count

      t.timestamps
    end
  end
end
