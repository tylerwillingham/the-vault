class CreatePtoPolicies < ActiveRecord::Migration
  def change
    create_table :pto_policies do |t|
      t.integer :employee_id
      t.integer :year
      t.integer :hours

      t.timestamps
    end
  end
end
