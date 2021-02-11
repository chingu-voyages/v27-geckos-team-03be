class CreateAccountabilityPartners < ActiveRecord::Migration[6.0]
  def change
    create_table :accountability_partners do |t|
      t.integer :patient_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
