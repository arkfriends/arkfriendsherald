class CreateViewings < ActiveRecord::Migration
  def change
    create_table :viewings do |t|
      t.integer :newsitem_id
      t.timestamp :time

      t.timestamps
    end
  end
end
