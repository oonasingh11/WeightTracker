class CreateWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :weights do |t|
      t.decimal :value
      t.date :date

      t.timestamps
    end
  end
end
