class RemoveHourFromPrescriptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :prescriptions, :hour, :integer
  end
end
