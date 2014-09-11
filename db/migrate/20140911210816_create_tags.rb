class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string :interests
    	t.belongs_to :profile

      t.timestamps
    end
  end
end
