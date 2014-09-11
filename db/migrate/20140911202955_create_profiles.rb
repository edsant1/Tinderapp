class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.date :birthdate
      t.boolean :gender
      t.text :about
      t.float :rank, precision: 2, scale: 1

      t.timestamps
    end
  end
end
