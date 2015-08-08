class CreateTestNames < ActiveRecord::Migration
  def change
    create_table :test_names do |t|
      t.text :name
      t.text :element
      t.text :bio_ref
      t.text :unit_mea
      t.text :mth_tec
      t.text :result
      t.integer :test_title_id

      t.timestamps
    end
  end
end
