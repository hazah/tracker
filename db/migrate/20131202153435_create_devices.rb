class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.references :person, index: true
      t.string :kind, default: nil
      t.string :contact, null: false
      t.string :hostname, default: nil
      t.string :mac, null: false

      t.timestamps
    end
  end
end
