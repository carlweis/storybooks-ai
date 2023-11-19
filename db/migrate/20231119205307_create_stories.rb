class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title, null: false, default: ""
      t.string :permalink, null: false, default: ""
      t.text :intro, null: false, default: ""
      t.string :genre, null: false, default: ""
      t.boolean :interactive, null: false, default: false
      t.boolean :featured, null: false, default: false

      t.timestamps
    end

    add_index :stories, :title, unique: false
    add_index :stories, :genre, unique: false
  end
end
