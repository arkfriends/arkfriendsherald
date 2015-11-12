class CreateOperatinghours < ActiveRecord::Migration
  def change
    create_table :operatinghours do |t|
      t.integer :dow
      t.date :starting
      t.date :ending

      t.timestamps
    end
  end
end
