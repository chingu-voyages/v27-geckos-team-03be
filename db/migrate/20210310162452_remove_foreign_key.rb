class RemoveForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :prescriptions, :medications 
    
  end
end
