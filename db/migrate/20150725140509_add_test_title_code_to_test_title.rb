class AddTestTitleCodeToTestTitle < ActiveRecord::Migration
  def change
    add_column :test_titles, :test_title_code, :string
  end
end
