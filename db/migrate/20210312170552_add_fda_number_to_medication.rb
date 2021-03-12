class AddFdaNumberToMedication < ActiveRecord::Migration[6.0]
  def change
    add_column :medications, :fda_number, :string
  end
end
