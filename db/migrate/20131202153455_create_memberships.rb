class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :kind, null: false
      t.string :name, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
