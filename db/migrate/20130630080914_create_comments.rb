class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :behatweb

      t.timestamps
    end
    add_index :comments, :behatweb_id
  end
end
