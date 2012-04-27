class AddFieldsForUsers < ActiveRecord::Migration
  def up
    add_column :users, :start_holiday, :date
    add_column :users, :end_holiday, :date
    add_column :users, :officer, :string        
    add_column :users, :department, :string
  end

  def down
    remove_column :users, :start_holiday
    remove_column :users, :end_holiday
    remove_column :users, :officer
    remove_column :users, :department
  end
end
