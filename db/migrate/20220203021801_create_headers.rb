class CreateHeaders < ActiveRecord::Migration[6.1]
  def change
    create_table :headers do |t|
      t.text :content
      t.timestamps
    end
  end
end
