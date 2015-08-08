class CreateTestTitles < ActiveRecord::Migration
  def change
    create_table :test_titles do |t|
      t.string :title
      t.text :description
      t.text :process
      t.integer :price
      t.date :tat
      t.text :remarks
      t.text :restriction
      t.text :social_note
      t.integer :department_id

      t.timestamps
    end
  end
end
