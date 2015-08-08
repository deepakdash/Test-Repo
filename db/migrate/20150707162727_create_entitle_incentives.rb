class CreateEntitleIncentives < ActiveRecord::Migration
  def change
    create_table :entitle_incentives do |t|
      t.string :ref_type
      t.string :ref_code
      t.timestamps
    end
  end
end
