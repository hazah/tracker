class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.references :membership, index: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
