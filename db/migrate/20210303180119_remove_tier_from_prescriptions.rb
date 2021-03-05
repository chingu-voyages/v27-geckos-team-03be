class RemoveTierFromPrescriptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :prescriptions, :tier, :string
  end
end
