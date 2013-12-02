class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :connection, index: true, null: false
      t.string :kind, null: false
      t.timestamp :stamp, null: false
    end
  end
end
