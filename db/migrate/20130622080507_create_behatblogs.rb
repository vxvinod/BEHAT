class CreateBehatblogs < ActiveRecord::Migration
  def change
    create_table :behatblogs do |t|
      t.string :title
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
