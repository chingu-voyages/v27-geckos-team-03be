class RemoveExpirationDateFromPrescriptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :prescriptions, :expiration_date, :string
  end
end
