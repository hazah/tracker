class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :device, index: true, null: false
      t.string :ip, null: false, size: 15
      t.timestamp :start_stamp, null: false
      t.timestamp :end_stamp
    end
  end
end
