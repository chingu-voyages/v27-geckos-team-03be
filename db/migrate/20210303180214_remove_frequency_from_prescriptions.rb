class RemoveFrequencyFromPrescriptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :prescriptions, :frequency, :string
  end
end
