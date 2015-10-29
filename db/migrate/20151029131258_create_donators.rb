class CreateDonators < ActiveRecord::Migration
  def change
    create_table :donators do |t|
      t.string :name
      t.string :email
      t.string :blood_type

      t.timestamps null: false
    end
  end
end
