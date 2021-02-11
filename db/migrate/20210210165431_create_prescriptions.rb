class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.string :tier
      t.string :frequency
      t.belongs_to :medication, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :expiration_date

      t.timestamps
    end
  end
end
