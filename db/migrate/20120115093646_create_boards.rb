class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
    add_index :boards, :user_id
    add_index :boards, :category_id
  end

end
