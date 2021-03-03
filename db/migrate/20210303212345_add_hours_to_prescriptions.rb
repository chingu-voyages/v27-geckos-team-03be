class AddHoursToPrescriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :prescriptions, :hours, :integer, array: true, default:[]
  end
end
