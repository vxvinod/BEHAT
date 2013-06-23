class CreateBehatconts < ActiveRecord::Migration
  def change
    create_table :behatconts do |t|
      t.string :title
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
