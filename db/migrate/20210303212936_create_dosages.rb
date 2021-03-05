class CreateDosages < ActiveRecord::Migration[6.0]
  def change
    create_table :dosages do |t|
      t.boolean :taken
      t.belongs_to :prescription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
