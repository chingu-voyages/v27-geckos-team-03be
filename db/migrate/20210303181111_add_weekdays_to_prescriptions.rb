class AddWeekdaysToPrescriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :prescriptions, :weekdays, :integer, array: true, default:[]
  end
end
