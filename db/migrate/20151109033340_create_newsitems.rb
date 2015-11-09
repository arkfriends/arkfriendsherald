class CreateNewsitems < ActiveRecord::Migration
  def self.up
    create_table :newsitems do |t|
      t.column :title, :string
      t.column :filename, :string
      t.column :filetype_id, :string
      t.column :priority, :integer
      t.column :zone_id, :integer
      t.column :duration, :integer
      t.column :starting, :date
      t.column :ending, :date
      t.column :staff_id, :date
      t.timestamps
    end
  end
  
  def self.down
    drop_table :newsitems
  end
end
