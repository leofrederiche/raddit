class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id_user
      t.integer :id_link
      t.text :comment

      t.timestamps
    end
  end
end
