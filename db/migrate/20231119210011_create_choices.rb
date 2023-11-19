class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.string :text, null: false, default: ""
      t.references :chapter, null: false, foreign_key: true
      t.integer :next_chapter_id

      t.timestamps
    end
  end
end
