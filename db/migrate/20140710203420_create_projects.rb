class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false
      t.string  :name
      t.text    :description
    end
    
    add_index :projects, :user_id
  end
end
