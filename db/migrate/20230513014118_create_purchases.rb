class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.belongs_to :user
      t.belongs_to :aircraft_part
      t.timestamps
    end
  end
end
