class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end
