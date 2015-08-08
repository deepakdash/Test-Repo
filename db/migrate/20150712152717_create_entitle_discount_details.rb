class CreateEntitleDiscountDetails < ActiveRecord::Migration
  def change
    create_table :entitle_discount_details do |t|
      t.string :name
      t.text :address
      t.string :contact_no
      t.string :tax_pan
      t.string :specialize
      t.string :contact_person
      t.string :dept
      t.string :designation
      t.date :dob
      t.integer :rate
      t.string :ref_code
      t.integer :entitle_discount_id

      t.timestamps
    end
  end
end
