class CreateNewstypes < ActiveRecord::Migration
  def change
    create_table :newstypes do |t|
      t.string :extension
      t.string :viewer
      t.string :jscript
      t.string :pretags
      t.string :posttags

      t.timestamps
    end
  end
end
