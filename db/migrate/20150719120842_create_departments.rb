class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :dep_type
      t.string :department_code

      t.timestamps
    end
  end
end
