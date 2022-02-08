class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.text :type 
      t.text :title
      t.text :sub_title
      t.integer :length_in_minutes 
      t.integer :sort_order 
      t.boolean :featured
      t.text :content
      t.timestamps
    end
  end
end
