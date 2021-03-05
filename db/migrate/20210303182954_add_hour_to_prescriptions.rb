class AddHourToPrescriptions < ActiveRecord::Migration[6.0]
  def change
    add_column :prescriptions, :hour, :integer
  end
end
