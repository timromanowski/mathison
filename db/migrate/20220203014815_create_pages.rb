class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.text :title 
      t.text :menu_text
      t.text :type
      t.integer :header_id
      t.timestamps
    end
  end
end
